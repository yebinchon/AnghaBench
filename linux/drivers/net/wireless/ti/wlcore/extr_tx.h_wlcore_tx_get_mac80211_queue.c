
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int hw_queue_base; } ;







__attribute__((used)) static inline
int wlcore_tx_get_mac80211_queue(struct wl12xx_vif *wlvif, int queue)
{
 int mac_queue = wlvif->hw_queue_base;

 switch (queue) {
 case 128:
  return mac_queue + 0;
 case 129:
  return mac_queue + 1;
 case 131:
  return mac_queue + 2;
 case 130:
  return mac_queue + 3;
 default:
  return mac_queue + 2;
 }
}
