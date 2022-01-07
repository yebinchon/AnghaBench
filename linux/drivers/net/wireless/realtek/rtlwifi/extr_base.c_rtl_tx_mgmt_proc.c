
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_8__ {int need_iqk; } ;
struct TYPE_5__ {scalar_t__ supp_phymode_switch; } ;
struct rtl_priv {TYPE_4__ phy; TYPE_3__* cfg; TYPE_1__ dm; } ;
struct rtl_mac {scalar_t__ link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le16 ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* chk_switch_dmdp ) (struct ieee80211_hw*) ;} ;


 int COMP_SEND ;
 int DBG_DMESG ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ MAC80211_LINKING ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 scalar_t__ ieee80211_is_auth (int ) ;
 scalar_t__ ieee80211_is_probe_req (int ) ;
 int rtl_get_fc (struct sk_buff*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*) ;

bool rtl_tx_mgmt_proc(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 __le16 fc = rtl_get_fc(skb);

 if (rtlpriv->dm.supp_phymode_switch &&
     mac->link_state < MAC80211_LINKED &&
     (ieee80211_is_auth(fc) || ieee80211_is_probe_req(fc))) {
  if (rtlpriv->cfg->ops->chk_switch_dmdp)
   rtlpriv->cfg->ops->chk_switch_dmdp(hw);
 }
 if (ieee80211_is_auth(fc)) {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_DMESG, "MAC80211_LINKING\n");

  mac->link_state = MAC80211_LINKING;

  rtlpriv->phy.need_iqk = 1;

 }

 return 1;
}
