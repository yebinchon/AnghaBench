
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9062_watchdog {struct da9062* hw; } ;
struct da9062 {int regmap; } ;


 int DA9062AA_CONTROL_D ;
 int DA9062AA_TWDSCALE_MASK ;
 unsigned int DA9062_TWDSCALE_DISABLE ;
 int da9062_reset_watchdog_timer (struct da9062_watchdog*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int da9062_wdt_update_timeout_register(struct da9062_watchdog *wdt,
           unsigned int regval)
{
 struct da9062 *chip = wdt->hw;
 int ret;

 ret = da9062_reset_watchdog_timer(wdt);
 if (ret)
  return ret;

 regmap_update_bits(chip->regmap,
      DA9062AA_CONTROL_D,
      DA9062AA_TWDSCALE_MASK,
      DA9062_TWDSCALE_DISABLE);

 usleep_range(150, 300);

 return regmap_update_bits(chip->regmap,
      DA9062AA_CONTROL_D,
      DA9062AA_TWDSCALE_MASK,
      regval);
}
