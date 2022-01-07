
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc2731_charger_info {scalar_t__ base; int regmap; } ;


 int SC2731_CC_EN ;
 int SC2731_CHARGER_PD ;
 scalar_t__ SC2731_CHG_CFG0 ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void sc2731_charger_stop_charge(struct sc2731_charger_info *info)
{
 regmap_update_bits(info->regmap, info->base + SC2731_CHG_CFG0,
      SC2731_CC_EN, 0);

 regmap_update_bits(info->regmap, info->base + SC2731_CHG_CFG0,
      SC2731_CHARGER_PD, SC2731_CHARGER_PD);
}
