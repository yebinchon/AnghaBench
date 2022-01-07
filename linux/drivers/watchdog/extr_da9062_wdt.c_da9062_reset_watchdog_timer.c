
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct da9062_watchdog {TYPE_1__* hw; } ;
struct TYPE_2__ {int regmap; } ;


 int DA9062AA_CONTROL_F ;
 int DA9062AA_WATCHDOG_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int da9062_reset_watchdog_timer(struct da9062_watchdog *wdt)
{
 return regmap_update_bits(wdt->hw->regmap, DA9062AA_CONTROL_F,
      DA9062AA_WATCHDOG_MASK,
      DA9062AA_WATCHDOG_MASK);
}
