
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** recorded_keys; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271 {int dummy; } ;


 int MAX_NUM_KEYS ;
 int kfree (int *) ;

__attribute__((used)) static void wl1271_free_ap_keys(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int i;

 for (i = 0; i < MAX_NUM_KEYS; i++) {
  kfree(wlvif->ap.recorded_keys[i]);
  wlvif->ap.recorded_keys[i] = ((void*)0);
 }
}
