
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9063 {int regmap; } ;


 int DA9063_REG_CONTROL_D ;
 unsigned int DA9063_TWDSCALE_MASK ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int da9063_wdt_is_running(struct da9063 *da9063)
{
 unsigned int val;

 regmap_read(da9063->regmap, DA9063_REG_CONTROL_D, &val);

 return val & DA9063_TWDSCALE_MASK;
}
