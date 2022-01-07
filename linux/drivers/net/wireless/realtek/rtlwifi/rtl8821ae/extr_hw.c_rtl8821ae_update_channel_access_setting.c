
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_mac {scalar_t__ mode; int vht_ldpc_cap; int vht_stbc_cap; scalar_t__ vendor; int slot_time; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int HW_VAR_R2T_SIFS ;
 int HW_VAR_SIFS ;
 int HW_VAR_SLOT_TIME ;
 int LDPC_VHT_ENABLE_RX ;
 scalar_t__ PEER_ATH ;
 int STBC_VHT_ENABLE_RX ;
 scalar_t__ WIRELESS_MODE_AC_5G ;
 scalar_t__ WIRELESS_MODE_G ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;
 int stub2 (struct ieee80211_hw*,int ,int*) ;
 int stub3 (struct ieee80211_hw*,int ,int*) ;

void rtl8821ae_update_channel_access_setting(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 wireless_mode = mac->mode;
 u8 sifs_timer, r2t_sifs;

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SLOT_TIME,
          (u8 *)&mac->slot_time);
 if (wireless_mode == WIRELESS_MODE_G)
  sifs_timer = 0x0a;
 else
  sifs_timer = 0x0e;
 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SIFS, (u8 *)&sifs_timer);

 r2t_sifs = 0xa;

 if (wireless_mode == WIRELESS_MODE_AC_5G &&
     (mac->vht_ldpc_cap & LDPC_VHT_ENABLE_RX) &&
     (mac->vht_stbc_cap & STBC_VHT_ENABLE_RX)) {
  if (mac->vendor == PEER_ATH)
   r2t_sifs = 0x8;
  else
   r2t_sifs = 0xa;
 } else if (wireless_mode == WIRELESS_MODE_AC_5G) {
  r2t_sifs = 0xa;
 }

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_R2T_SIFS, (u8 *)&r2t_sifs);
}
