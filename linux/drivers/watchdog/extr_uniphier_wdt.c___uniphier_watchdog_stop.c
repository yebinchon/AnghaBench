
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int WDTCTRL ;
 int WDTCTRL_ENABLE ;
 int regmap_write_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int __uniphier_watchdog_stop(struct regmap *regmap)
{

 return regmap_write_bits(regmap, WDTCTRL, WDTCTRL_ENABLE, 0);
}
