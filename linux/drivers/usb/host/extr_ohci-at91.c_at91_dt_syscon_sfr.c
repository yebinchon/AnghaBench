
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 struct regmap* syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static struct regmap *at91_dt_syscon_sfr(void)
{
 struct regmap *regmap;

 regmap = syscon_regmap_lookup_by_compatible("atmel,sama5d2-sfr");
 if (IS_ERR(regmap)) {
  regmap = syscon_regmap_lookup_by_compatible("microchip,sam9x60-sfr");
  if (IS_ERR(regmap))
   regmap = ((void*)0);
 }

 return regmap;
}
