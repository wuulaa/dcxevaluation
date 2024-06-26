#建筑类环境效益
CREATE TABLE t_envir_benefit_1
(
    id INT(4) NOT NULL AUTO_INCREMENT,
    project_id INT(4) NOT NULL,
    expert_id INT(4) NOT NULL,
    F_SaveLands FLOAT(5) NOT NULL,
    S_SaveLands_LandUse FLOAT(5) NOT NULL,
    S_SaveLands_Outdoors FLOAT(5) NOT NULL,
    S_SaveLands_Transport  FLOAT(5) NOT NULL,
    S_SaveLands_SiteDesign FLOAT(5) NOT NULL,
    F_SaveEnergy FLOAT(5) NOT NULL,
    S_SaveEnergy_Build FLOAT(5) NOT NULL,
    S_SaveEnergy_Condition FLOAT(5) NOT NULL,
    S_SaveEnergy_Light FLOAT(5) NOT NULL,
    S_SaveEnergy_EnergyUse FLOAT(5) NOT NULL,
    F_SaveWater FLOAT(5) NOT NULL,
    S_SaveWater_System FLOAT(5) NOT NULL,
    S_SaveWater_Tool FLOAT(5) NOT NULL,
    S_SaveWater_Use FLOAT(5) NOT NULL,
    F_SaveRes FLOAT(5) NOT NULL,
    S_SaveRes_SaveRes FLOAT(5) NOT NULL,
    S_SaveRes_Choose FLOAT(5) NOT NULL,
    F_Indoor FLOAT(5) NOT NULL,
    S_Indoor_Sound FLOAT(5) NOT NULL,
    S_Indoor_Light FLOAT(5) NOT NULL,
    S_Indoor_Hot FLOAT(5) NOT NULL,
    S_Indoor_Atmo FLOAT(5) NOT NULL,
    F_Construction FLOAT(5) NOT NULL,
    S_Construction_Envir FLOAT(5) NOT NULL,
    S_Construction_Res FLOAT(5) NOT NULL,
    S_Construction_Progress FLOAT(5) NOT NULL,
    F_Operation FLOAT(5) NOT NULL,
    S_Operation_Management FLOAT(5) NOT NULL,
    S_Operation_Tech FLOAT(5) NOT NULL,
    S_Operation_Envir FLOAT(5) NOT NULL,
    F_Innovation FLOAT(5) NOT NULL,
    S_Innovation_Structure FLOAT(5) NOT NULL,
    S_Innovation_Management FLOAT(5) NOT NULL,
    S_Innovation_Tech FLOAT(5) NOT NULL,
    F_Humanity FLOAT(5) NOT NULL,
    S_Humanity_People FLOAT(5) NOT NULL,
    S_Humanity_GreenLive FLOAT(5) NOT NULL,
    S_Humanity_GreenEdu FLOAT(5) NOT NULL,
    S_Humanity_History FLOAT(5) NOT NULL,
    F_Art FLOAT(5) NOT NULL,
    S_Art_Design FLOAT(5) NOT NULL,
    state INT(1),
    CONSTRAINT pk_t_envir_benefit_1_id PRIMARY KEY (id),
    CONSTRAINT fk_t_envir_benefit_1_project_id FOREIGN KEY (project_id) REFERENCES t_project(id),
    CONSTRAINT fk_t_envir_benefit_1_expert_id FOREIGN KEY (expert_id) REFERENCES t_expert(id),
    CONSTRAINT ck_t_envir_benefit_1_state CHECK (state IN(1,2))
);

DROP TABLE t_envir_benefit_1
SELECT * FROM t_envir_benefit_1;
DELETE FROM t_envir_benefit_1 WHERE id = 3;