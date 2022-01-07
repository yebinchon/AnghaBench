
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int flags; } ;
struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int WL1271_FLAG_VIF_CHANGE_IN_PROGRESS ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int wl1271_op_add_interface (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int wl1271_op_remove_interface (struct ieee80211_hw*,struct ieee80211_vif*) ;

__attribute__((used)) static int wl12xx_op_change_interface(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          enum nl80211_iftype new_type, bool p2p)
{
 struct wl1271 *wl = hw->priv;
 int ret;

 set_bit(WL1271_FLAG_VIF_CHANGE_IN_PROGRESS, &wl->flags);
 wl1271_op_remove_interface(hw, vif);

 vif->type = new_type;
 vif->p2p = p2p;
 ret = wl1271_op_add_interface(hw, vif);

 clear_bit(WL1271_FLAG_VIF_CHANGE_IN_PROGRESS, &wl->flags);
 return ret;
}
