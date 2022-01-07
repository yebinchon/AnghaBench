
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int type; int p2p; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int cw1200_add_interface (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int cw1200_remove_interface (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int pr_debug (char*,int,int,int,int) ;

int cw1200_change_interface(struct ieee80211_hw *dev,
       struct ieee80211_vif *vif,
       enum nl80211_iftype new_type,
       bool p2p)
{
 int ret = 0;
 pr_debug("change_interface new: %d (%d), old: %d (%d)\n", new_type,
   p2p, vif->type, vif->p2p);

 if (new_type != vif->type || vif->p2p != p2p) {
  cw1200_remove_interface(dev, vif);
  vif->type = new_type;
  vif->p2p = p2p;
  ret = cw1200_add_interface(dev, vif);
 }

 return ret;
}
