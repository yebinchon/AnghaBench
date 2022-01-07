
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct max17042_config_data {int kempty0; int empty_tempco; int tcompc0; int rcomp0; int fctc; int temp_lim; int temp_nom; int vempty; int dpacc; int dqacc; int lavg_empty; int socempty; int fullcapnom; int fullcap; int masksoc; int misc_cfg; int relax_cfg; int filter_cfg; int learn_cfg; int at_rate; int ichgt_term; int design_cap; int shdntimer; int config; int soc_alrt_thresh; int talrt_thresh; int valrt_thresh; int coff; int cgain; int toff; int tgain; } ;
struct max17042_chip {scalar_t__ chip_type; TYPE_1__* pdata; struct regmap* regmap; } ;
struct TYPE_2__ {struct max17042_config_data* config_data; } ;


 int MAX17042_AtRate ;
 int MAX17042_CGAIN ;
 int MAX17042_COFF ;
 int MAX17042_CONFIG ;
 int MAX17042_DesignCap ;
 int MAX17042_EmptyTempCo ;
 int MAX17042_FCTC ;
 int MAX17042_FilterCFG ;
 int MAX17042_FullCAP ;
 int MAX17042_FullCAPNom ;
 int MAX17042_ICHGTerm ;
 int MAX17042_K_empty0 ;
 int MAX17042_LAvg_empty ;
 int MAX17042_LearnCFG ;
 int MAX17042_MaskSOC ;
 int MAX17042_MiscCFG ;
 int MAX17042_RCOMP0 ;
 int MAX17042_RelaxCFG ;
 int MAX17042_SALRT_Th ;
 int MAX17042_SHDNTIMER ;
 int MAX17042_SOC_empty ;
 int MAX17042_TALRT_Th ;
 int MAX17042_TGAIN ;
 int MAX17042_TempCo ;
 int MAX17042_TempLim ;
 int MAX17042_TempNom ;
 int MAX17042_VALRT_Th ;
 int MAX17042_V_empty ;
 int MAX17042_dPacc ;
 int MAX17042_dQacc ;
 int MAX17047_V_empty ;
 scalar_t__ MAXIM_DEVICE_TYPE_MAX17042 ;
 int MAx17042_TOFF ;
 int max17042_override_por (struct regmap*,int ,int ) ;

__attribute__((used)) static inline void max17042_override_por_values(struct max17042_chip *chip)
{
 struct regmap *map = chip->regmap;
 struct max17042_config_data *config = chip->pdata->config_data;

 max17042_override_por(map, MAX17042_TGAIN, config->tgain);
 max17042_override_por(map, MAx17042_TOFF, config->toff);
 max17042_override_por(map, MAX17042_CGAIN, config->cgain);
 max17042_override_por(map, MAX17042_COFF, config->coff);

 max17042_override_por(map, MAX17042_VALRT_Th, config->valrt_thresh);
 max17042_override_por(map, MAX17042_TALRT_Th, config->talrt_thresh);
 max17042_override_por(map, MAX17042_SALRT_Th,
      config->soc_alrt_thresh);
 max17042_override_por(map, MAX17042_CONFIG, config->config);
 max17042_override_por(map, MAX17042_SHDNTIMER, config->shdntimer);

 max17042_override_por(map, MAX17042_DesignCap, config->design_cap);
 max17042_override_por(map, MAX17042_ICHGTerm, config->ichgt_term);

 max17042_override_por(map, MAX17042_AtRate, config->at_rate);
 max17042_override_por(map, MAX17042_LearnCFG, config->learn_cfg);
 max17042_override_por(map, MAX17042_FilterCFG, config->filter_cfg);
 max17042_override_por(map, MAX17042_RelaxCFG, config->relax_cfg);
 max17042_override_por(map, MAX17042_MiscCFG, config->misc_cfg);
 max17042_override_por(map, MAX17042_MaskSOC, config->masksoc);

 max17042_override_por(map, MAX17042_FullCAP, config->fullcap);
 max17042_override_por(map, MAX17042_FullCAPNom, config->fullcapnom);
 if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042)
  max17042_override_por(map, MAX17042_SOC_empty,
      config->socempty);
 max17042_override_por(map, MAX17042_LAvg_empty, config->lavg_empty);
 max17042_override_por(map, MAX17042_dQacc, config->dqacc);
 max17042_override_por(map, MAX17042_dPacc, config->dpacc);

 if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042)
  max17042_override_por(map, MAX17042_V_empty, config->vempty);
 else
  max17042_override_por(map, MAX17047_V_empty, config->vempty);
 max17042_override_por(map, MAX17042_TempNom, config->temp_nom);
 max17042_override_por(map, MAX17042_TempLim, config->temp_lim);
 max17042_override_por(map, MAX17042_FCTC, config->fctc);
 max17042_override_por(map, MAX17042_RCOMP0, config->rcomp0);
 max17042_override_por(map, MAX17042_TempCo, config->tcompc0);
 if (chip->chip_type) {
  max17042_override_por(map, MAX17042_EmptyTempCo,
      config->empty_tempco);
  max17042_override_por(map, MAX17042_K_empty0,
      config->kempty0);
 }
}
