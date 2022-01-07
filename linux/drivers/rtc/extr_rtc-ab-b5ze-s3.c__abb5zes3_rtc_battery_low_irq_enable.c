
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ABB5ZES3_REG_CTRL3 ;
 int ABB5ZES3_REG_CTRL3_BLIE ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static inline int _abb5zes3_rtc_battery_low_irq_enable(struct regmap *regmap,
             bool enable)
{
 return regmap_update_bits(regmap, ABB5ZES3_REG_CTRL3,
      ABB5ZES3_REG_CTRL3_BLIE,
      enable ? ABB5ZES3_REG_CTRL3_BLIE : 0);
}
