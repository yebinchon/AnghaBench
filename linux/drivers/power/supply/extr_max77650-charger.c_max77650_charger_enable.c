
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_charger_data {int dev; int map; } ;


 int MAX77650_CHARGER_CHG_EN_MASK ;
 int MAX77650_CHARGER_ENABLED ;
 int MAX77650_REG_CNFG_CHG_B ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77650_charger_enable(struct max77650_charger_data *chg)
{
 int rv;

 rv = regmap_update_bits(chg->map,
    MAX77650_REG_CNFG_CHG_B,
    MAX77650_CHARGER_CHG_EN_MASK,
    MAX77650_CHARGER_ENABLED);
 if (rv)
  dev_err(chg->dev, "unable to enable the charger: %d\n", rv);

 return rv;
}
