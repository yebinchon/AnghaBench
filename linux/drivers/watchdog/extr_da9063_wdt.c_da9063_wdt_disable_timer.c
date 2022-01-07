
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9063 {int regmap; } ;


 int DA9063_REG_CONTROL_D ;
 int DA9063_TWDSCALE_DISABLE ;
 int DA9063_TWDSCALE_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int da9063_wdt_disable_timer(struct da9063 *da9063)
{
 return regmap_update_bits(da9063->regmap, DA9063_REG_CONTROL_D,
      DA9063_TWDSCALE_MASK,
      DA9063_TWDSCALE_DISABLE);
}
