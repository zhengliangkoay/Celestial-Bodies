--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteriods; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriods (
    asteriods_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.asteriods OWNER TO freecodecamp;

--
-- Name: asteriods_asteriods_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteriods_asteriods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteriods_asteriods_id_seq OWNER TO freecodecamp;

--
-- Name: asteriods_asteriods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteriods_asteriods_id_seq OWNED BY public.asteriods.asteriods_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    gal_col_a character varying(30),
    gal_col_b character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    planet_id integer,
    moon_col_a character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,2),
    has_life boolean,
    is_spherical boolean,
    description text,
    star_id integer,
    pla_col_a character varying(30),
    pla_col_b character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_col_a character varying(30),
    star_col_b character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteriods asteriods_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods ALTER COLUMN asteriods_id SET DEFAULT nextval('public.asteriods_asteriods_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteriods; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriods VALUES (1, 'Ceres', NULL);
INSERT INTO public.asteriods VALUES (2, 'Vesta', NULL);
INSERT INTO public.asteriods VALUES (3, 'Eros', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC 1277', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Titan', NULL, 6, NULL);
INSERT INTO public.moon VALUES (4, 'Enceladus', NULL, 6, NULL);
INSERT INTO public.moon VALUES (5, 'Miranda', NULL, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Tethys', NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'Io', NULL, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Triton', NULL, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Charon', NULL, 9, NULL);
INSERT INTO public.moon VALUES (10, 'Ariel', NULL, 7, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Hyperion', NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Deimos', NULL, 4, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', NULL, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Phoebe', NULL, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Rhea', NULL, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', NULL, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Nereid', NULL, 8, NULL);
INSERT INTO public.moon VALUES (19, 'lapetus', NULL, 6, NULL);
INSERT INTO public.moon VALUES (20, 'Europa', NULL, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima b', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Blue Supergiants', 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Red Giants', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Delta Trianguli', 3, NULL, NULL);


--
-- Name: asteriods_asteriods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteriods_asteriods_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteriods asteriods_asteriods_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods
    ADD CONSTRAINT asteriods_asteriods_id_key UNIQUE (asteriods_id);


--
-- Name: asteriods asteriods_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods
    ADD CONSTRAINT asteriods_pkey PRIMARY KEY (asteriods_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

