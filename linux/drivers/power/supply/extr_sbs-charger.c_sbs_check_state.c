
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbs_info {unsigned int last_state; int power_supply; int regmap; } ;


 int SBS_CHARGER_REG_STATUS ;
 int power_supply_changed (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int sbs_check_state(struct sbs_info *chip)
{
 unsigned int reg;
 int ret;

 ret = regmap_read(chip->regmap, SBS_CHARGER_REG_STATUS, &reg);
 if (!ret && reg != chip->last_state) {
  chip->last_state = reg;
  power_supply_changed(chip->power_supply);
  return 1;
 }

 return 0;
}
