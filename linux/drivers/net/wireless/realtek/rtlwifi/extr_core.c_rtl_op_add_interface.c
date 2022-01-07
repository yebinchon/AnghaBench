
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_8__ {int conf_mutex; } ;
struct TYPE_5__ {int current_bandtype; } ;
struct rtl_priv {TYPE_4__ locks; TYPE_3__* cfg; TYPE_1__ rtlhal; } ;
struct rtl_mac {int beacon_enabled; int basic_rates; void** mac_addr; void* retry_short; void* retry_long; struct ieee80211_vif* opmode; struct ieee80211_vif* vif; scalar_t__ p2p; void* link_state; } ;
struct ieee80211_vif {int addr; struct ieee80211_vif* type; int driver_flags; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {TYPE_2__* ops; int * maps; } ;
struct TYPE_6__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,void**) ;int (* set_network_type ) (struct ieee80211_hw*,struct ieee80211_vif*) ;int (* set_bcn_reg ) (struct ieee80211_hw*) ;int (* update_interrupt_mask ) (struct ieee80211_hw*,int ,int ) ;} ;


 int BAND_ON_2_4G ;
 int COMP_ERR ;
 int COMP_MAC80211 ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int HW_VAR_BASIC_RATE ;
 int HW_VAR_ETHER_ADDR ;
 int HW_VAR_RETRY_LIMIT ;
 int IEEE80211_VIF_BEACON_FILTER ;
 void* MAC80211_LINKED ;






 scalar_t__ P2P_ROLE_CLIENT ;
 scalar_t__ P2P_ROLE_GO ;
 size_t RTL_IBSS_INT_MASKS ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int memcpy (void**,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,struct ieee80211_vif*) ;
 int rtl_ips_nic_on (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int ) ;
 int stub10 (struct ieee80211_hw*,int ,void**) ;
 int stub11 (struct ieee80211_hw*,int ,void**) ;
 int stub2 (struct ieee80211_hw*) ;
 int stub3 (struct ieee80211_hw*,int ,void**) ;
 int stub4 (struct ieee80211_hw*) ;
 int stub5 (struct ieee80211_hw*,int ,void**) ;
 int stub6 (struct ieee80211_hw*) ;
 int stub7 (struct ieee80211_hw*,int ,void**) ;
 int stub8 (struct ieee80211_hw*,int ,void**) ;
 int stub9 (struct ieee80211_hw*,struct ieee80211_vif*) ;

__attribute__((used)) static int rtl_op_add_interface(struct ieee80211_hw *hw,
  struct ieee80211_vif *vif)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 int err = 0;
 u8 retry_limit = 0x30;

 if (mac->vif) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "vif has been set!! mac->vif = 0x%p\n", mac->vif);
  return -EOPNOTSUPP;
 }

 vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER;

 rtl_ips_nic_on(hw);

 mutex_lock(&rtlpriv->locks.conf_mutex);
 switch (ieee80211_vif_type_p2p(vif)) {
 case 130:
  mac->p2p = P2P_ROLE_CLIENT;

 case 128:
  if (mac->beacon_enabled == 1) {
   RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
     "NL80211_IFTYPE_STATION\n");
   mac->beacon_enabled = 0;
   rtlpriv->cfg->ops->update_interrupt_mask(hw, 0,
     rtlpriv->cfg->maps[RTL_IBSS_INT_MASKS]);
  }
  break;
 case 133:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
    "NL80211_IFTYPE_ADHOC\n");

  mac->link_state = MAC80211_LINKED;
  rtlpriv->cfg->ops->set_bcn_reg(hw);
  if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G)
   mac->basic_rates = 0xfff;
  else
   mac->basic_rates = 0xff0;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_BASIC_RATE,
    (u8 *)(&mac->basic_rates));

  retry_limit = 0x07;
  break;
 case 129:
  mac->p2p = P2P_ROLE_GO;

 case 132:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
    "NL80211_IFTYPE_AP\n");

  mac->link_state = MAC80211_LINKED;
  rtlpriv->cfg->ops->set_bcn_reg(hw);
  if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G)
   mac->basic_rates = 0xfff;
  else
   mac->basic_rates = 0xff0;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_BASIC_RATE,
           (u8 *)(&mac->basic_rates));

  retry_limit = 0x07;
  break;
 case 131:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
    "NL80211_IFTYPE_MESH_POINT\n");

  mac->link_state = MAC80211_LINKED;
  rtlpriv->cfg->ops->set_bcn_reg(hw);
  if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G)
   mac->basic_rates = 0xfff;
  else
   mac->basic_rates = 0xff0;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_BASIC_RATE,
    (u8 *)(&mac->basic_rates));

  retry_limit = 0x07;
  break;
 default:
  pr_err("operation mode %d is not supported!\n",
         vif->type);
  err = -EOPNOTSUPP;
  goto out;
 }

 if (mac->p2p) {
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
    "p2p role %x\n", vif->type);
  mac->basic_rates = 0xff0;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_BASIC_RATE,
    (u8 *)(&mac->basic_rates));
 }
 mac->vif = vif;
 mac->opmode = vif->type;
 rtlpriv->cfg->ops->set_network_type(hw, vif->type);
 memcpy(mac->mac_addr, vif->addr, ETH_ALEN);
 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);

 mac->retry_long = retry_limit;
 mac->retry_short = retry_limit;
 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RETRY_LIMIT,
   (u8 *)(&retry_limit));
out:
 mutex_unlock(&rtlpriv->locks.conf_mutex);
 return err;
}
