
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9063 {int regmap; } ;


 int DA9063_REG_CONTROL_D ;
 int DA9063_TWDSCALE_MASK ;
 int da9063_wdt_disable_timer (struct da9063*) ;
 unsigned int da9063_wdt_timeout_to_sel (unsigned int) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
da9063_wdt_update_timeout(struct da9063 *da9063, unsigned int timeout)
{
 unsigned int regval;
 int ret;
 ret = da9063_wdt_disable_timer(da9063);
 if (ret)
  return ret;

 usleep_range(150, 300);
 regval = da9063_wdt_timeout_to_sel(timeout);

 return regmap_update_bits(da9063->regmap, DA9063_REG_CONTROL_D,
      DA9063_TWDSCALE_MASK, regval);
}
