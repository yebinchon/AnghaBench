
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DA9063_TWDSCALE_MAX ;
 unsigned int DA9063_TWDSCALE_MIN ;
 unsigned int* wdt_timeout ;

__attribute__((used)) static unsigned int da9063_wdt_timeout_to_sel(unsigned int secs)
{
 unsigned int i;

 for (i = DA9063_TWDSCALE_MIN; i <= DA9063_TWDSCALE_MAX; i++) {
  if (wdt_timeout[i] >= secs)
   return i;
 }

 return DA9063_TWDSCALE_MAX;
}
