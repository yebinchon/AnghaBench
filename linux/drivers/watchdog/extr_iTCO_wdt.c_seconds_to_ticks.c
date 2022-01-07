
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iTCO_wdt_private {int iTCO_version; } ;



__attribute__((used)) static inline unsigned int seconds_to_ticks(struct iTCO_wdt_private *p,
         int secs)
{
 return p->iTCO_version == 3 ? secs : (secs * 10) / 6;
}
