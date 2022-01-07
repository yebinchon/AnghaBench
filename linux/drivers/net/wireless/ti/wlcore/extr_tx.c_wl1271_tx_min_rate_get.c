
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ WARN_ON (int) ;
 int __ffs (int ) ;

u32 wl1271_tx_min_rate_get(struct wl1271 *wl, u32 rate_set)
{
 if (WARN_ON(!rate_set))
  return 0;

 return BIT(__ffs(rate_set));
}
