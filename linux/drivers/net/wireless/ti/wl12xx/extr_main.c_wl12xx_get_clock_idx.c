
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wl12xx_clock {scalar_t__ freq; int xtal; int hw_idx; } ;


 int EINVAL ;

__attribute__((used)) static int wl12xx_get_clock_idx(const struct wl12xx_clock *table,
    u32 freq, bool xtal)
{
 int i;

 for (i = 0; table[i].freq != 0; i++)
  if ((table[i].freq == freq) && (table[i].xtal == xtal))
   return table[i].hw_idx;

 return -EINVAL;
}
