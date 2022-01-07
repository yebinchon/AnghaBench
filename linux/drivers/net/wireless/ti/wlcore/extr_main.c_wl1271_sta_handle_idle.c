
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int flags; } ;
struct wl1271 {TYPE_1__* ops; struct wl12xx_vif* sched_vif; } ;
struct TYPE_2__ {int (* sched_scan_stop ) (struct wl1271*,struct wl12xx_vif*) ;} ;


 int WLVIF_FLAG_ACTIVE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct wl1271*,struct wl12xx_vif*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void wl1271_sta_handle_idle(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       bool idle)
{
 bool cur_idle = !test_bit(WLVIF_FLAG_ACTIVE, &wlvif->flags);

 if (idle == cur_idle)
  return;

 if (idle) {
  clear_bit(WLVIF_FLAG_ACTIVE, &wlvif->flags);
 } else {

  if (wl->sched_vif == wlvif)
   wl->ops->sched_scan_stop(wl, wlvif);

  set_bit(WLVIF_FLAG_ACTIVE, &wlvif->flags);
 }
}
