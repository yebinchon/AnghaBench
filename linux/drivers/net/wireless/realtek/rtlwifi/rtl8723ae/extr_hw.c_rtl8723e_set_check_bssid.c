
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ rfpwr_state; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ psc; } ;
struct rtl_pci {int receive_config; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 int BIT (int) ;
 scalar_t__ ERFON ;
 int HW_VAR_RCR ;
 int RCR_CBSSID_BCN ;
 int RCR_CBSSID_DATA ;
 int _rtl8723e_set_bcn_ctrl_reg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;
 int stub2 (struct ieee80211_hw*,int ,int *) ;

void rtl8723e_set_check_bssid(struct ieee80211_hw *hw, bool check_bssid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u32 reg_rcr = rtlpci->receive_config;

 if (rtlpriv->psc.rfpwr_state != ERFON)
  return;

 if (check_bssid) {
  reg_rcr |= (RCR_CBSSID_DATA | RCR_CBSSID_BCN);
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RCR,
           (u8 *)(&reg_rcr));
  _rtl8723e_set_bcn_ctrl_reg(hw, 0, BIT(4));
 } else if (!check_bssid) {
  reg_rcr &= (~(RCR_CBSSID_DATA | RCR_CBSSID_BCN));
  _rtl8723e_set_bcn_ctrl_reg(hw, BIT(4), 0);
  rtlpriv->cfg->ops->set_hw_reg(hw,
   HW_VAR_RCR, (u8 *)(&reg_rcr));
 }
}
