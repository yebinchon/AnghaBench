
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlcore_hw_queue_iter_data {int cur_running; int hw_queue_map; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {scalar_t__ type; int* hw_queue; } ;


 int IEEE80211_INVAL_HW_QUEUE ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int NUM_TX_QUEUES ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __set_bit (int,int ) ;

__attribute__((used)) static void wlcore_hw_queue_iter(void *data, u8 *mac,
     struct ieee80211_vif *vif)
{
 struct wlcore_hw_queue_iter_data *iter_data = data;

 if (vif->type == NL80211_IFTYPE_P2P_DEVICE ||
     WARN_ON_ONCE(vif->hw_queue[0] == IEEE80211_INVAL_HW_QUEUE))
  return;

 if (iter_data->cur_running || vif == iter_data->vif) {
  iter_data->cur_running = 1;
  return;
 }

 __set_bit(vif->hw_queue[0] / NUM_TX_QUEUES, iter_data->hw_queue_map);
}
