
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vif_counter_data {struct ieee80211_vif* cur_vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ieee80211_iterate_active_interfaces (struct ieee80211_hw*,int ,int ,struct vif_counter_data*) ;
 int memset (struct vif_counter_data*,int ,int) ;
 int wl12xx_vif_count_iter ;

__attribute__((used)) static void wl12xx_get_vif_count(struct ieee80211_hw *hw,
          struct ieee80211_vif *cur_vif,
          struct vif_counter_data *data)
{
 memset(data, 0, sizeof(*data));
 data->cur_vif = cur_vif;

 ieee80211_iterate_active_interfaces(hw, IEEE80211_IFACE_ITER_RESUME_ALL,
         wl12xx_vif_count_iter, data);
}
