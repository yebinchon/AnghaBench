
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int conf_mutex; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__* cfg; } ;
struct rtl_mac {int beacon_enabled; int opmode; int vendor; int bssid; int link_state; int * vif; scalar_t__ p2p; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; int * maps; } ;
struct TYPE_4__ {int (* set_network_type ) (struct ieee80211_hw*,int ) ;int (* update_interrupt_mask ) (struct ieee80211_hw*,int ,int ) ;} ;


 int MAC80211_NOLINK ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int PEER_UNKNOWN ;
 size_t RTL_IBSS_INT_MASKS ;
 int eth_zero_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int ) ;
 int stub2 (struct ieee80211_hw*,int ) ;

__attribute__((used)) static void rtl_op_remove_interface(struct ieee80211_hw *hw,
  struct ieee80211_vif *vif)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));

 mutex_lock(&rtlpriv->locks.conf_mutex);


 if (vif->type == NL80211_IFTYPE_AP ||
     vif->type == NL80211_IFTYPE_ADHOC ||
     vif->type == NL80211_IFTYPE_MESH_POINT) {
  if (mac->beacon_enabled == 1) {
   mac->beacon_enabled = 0;
   rtlpriv->cfg->ops->update_interrupt_mask(hw, 0,
     rtlpriv->cfg->maps[RTL_IBSS_INT_MASKS]);
  }
 }





 mac->p2p = 0;
 mac->vif = ((void*)0);
 mac->link_state = MAC80211_NOLINK;
 eth_zero_addr(mac->bssid);
 mac->vendor = PEER_UNKNOWN;
 mac->opmode = NL80211_IFTYPE_UNSPECIFIED;
 rtlpriv->cfg->ops->set_network_type(hw, mac->opmode);

 mutex_unlock(&rtlpriv->locks.conf_mutex);
}
