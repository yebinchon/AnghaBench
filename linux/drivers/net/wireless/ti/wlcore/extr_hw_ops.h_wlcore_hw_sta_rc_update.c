
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sta_rc_update ) (struct wl1271*,struct wl12xx_vif*) ;} ;


 int stub1 (struct wl1271*,struct wl12xx_vif*) ;

__attribute__((used)) static inline void
wlcore_hw_sta_rc_update(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 if (wl->ops->sta_rc_update)
  wl->ops->sta_rc_update(wl, wlvif);
}
