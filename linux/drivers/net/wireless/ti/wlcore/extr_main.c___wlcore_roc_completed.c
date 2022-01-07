
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int flags; } ;
struct wl1271 {int * roc_vif; } ;


 int EBUSY ;
 int WLVIF_FLAG_INITIALIZED ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wl12xx_stop_dev (struct wl1271*,struct wl12xx_vif*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (int *) ;

__attribute__((used)) static int __wlcore_roc_completed(struct wl1271 *wl)
{
 struct wl12xx_vif *wlvif;
 int ret;


 if (unlikely(!wl->roc_vif))
  return 0;

 wlvif = wl12xx_vif_to_data(wl->roc_vif);

 if (!test_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags))
  return -EBUSY;

 ret = wl12xx_stop_dev(wl, wlvif);
 if (ret < 0)
  return ret;

 wl->roc_vif = ((void*)0);

 return 0;
}
