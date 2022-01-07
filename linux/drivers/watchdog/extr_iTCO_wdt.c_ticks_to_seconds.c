
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iTCO_wdt_private {int iTCO_version; } ;



__attribute__((used)) static inline unsigned int ticks_to_seconds(struct iTCO_wdt_private *p,
         int ticks)
{
 return p->iTCO_version == 3 ? ticks : (ticks * 6) / 10;
}
