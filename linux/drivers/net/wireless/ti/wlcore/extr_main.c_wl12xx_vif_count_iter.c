
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vif_counter_data {int cur_vif_running; struct ieee80211_vif* cur_vif; int counter; } ;
struct ieee80211_vif {int dummy; } ;



__attribute__((used)) static void wl12xx_vif_count_iter(void *data, u8 *mac,
      struct ieee80211_vif *vif)
{
 struct vif_counter_data *counter = data;

 counter->counter++;
 if (counter->cur_vif == vif)
  counter->cur_vif_running = 1;
}
