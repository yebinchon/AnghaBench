
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct max17042_config_data {int fullcapnom; int design_cap; int fullcap; } ;
struct max17042_chip {struct regmap* regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {struct max17042_config_data* config_data; } ;


 int MAX17042_DesignCap ;
 int MAX17042_FullCAP ;
 int MAX17042_FullCAPNom ;
 int max17042_write_verify_reg (struct regmap*,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void max17042_update_capacity_regs(struct max17042_chip *chip)
{
 struct max17042_config_data *config = chip->pdata->config_data;
 struct regmap *map = chip->regmap;

 max17042_write_verify_reg(map, MAX17042_FullCAP,
    config->fullcap);
 regmap_write(map, MAX17042_DesignCap, config->design_cap);
 max17042_write_verify_reg(map, MAX17042_FullCAPNom,
    config->fullcapnom);
}
