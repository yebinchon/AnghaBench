
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rx_ba_filter ) (struct wl1271*,int) ;} ;


 int stub1 (struct wl1271*,int) ;

__attribute__((used)) static inline int
wlcore_hw_rx_ba_filter(struct wl1271 *wl, bool action)
{
 if (wl->ops->rx_ba_filter)
  return wl->ops->rx_ba_filter(wl, action);
 return 0;
}
