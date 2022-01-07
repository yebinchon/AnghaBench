
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct max17042_config_data {int full_soc_thresh; int relax_cfg; int filter_cfg; int learn_cfg; int config; } ;
struct max17042_chip {scalar_t__ chip_type; struct regmap* regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {struct max17042_config_data* config_data; } ;


 int MAX17042_CONFIG ;
 int MAX17042_FilterCFG ;
 int MAX17042_LearnCFG ;
 int MAX17042_RelaxCFG ;
 int MAX17047_FullSOCThr ;
 scalar_t__ MAXIM_DEVICE_TYPE_MAX17047 ;
 scalar_t__ MAXIM_DEVICE_TYPE_MAX17050 ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void max17042_write_config_regs(struct max17042_chip *chip)
{
 struct max17042_config_data *config = chip->pdata->config_data;
 struct regmap *map = chip->regmap;

 regmap_write(map, MAX17042_CONFIG, config->config);
 regmap_write(map, MAX17042_LearnCFG, config->learn_cfg);
 regmap_write(map, MAX17042_FilterCFG,
   config->filter_cfg);
 regmap_write(map, MAX17042_RelaxCFG, config->relax_cfg);
 if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047 ||
   chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050)
  regmap_write(map, MAX17047_FullSOCThr,
      config->full_soc_thresh);
}
