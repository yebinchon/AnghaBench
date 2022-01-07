
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_mac {int ht_enable; int slot_time; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 int HW_VAR_SIFS ;
 int HW_VAR_SLOT_TIME ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;
 int stub2 (struct ieee80211_hw*,int ,int *) ;

void rtl92ce_update_channel_access_setting(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 sifs_timer;

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SLOT_TIME,
          &mac->slot_time);
 if (!mac->ht_enable)
  sifs_timer = 0x0a0a;
 else
  sifs_timer = 0x1010;
 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SIFS, (u8 *)&sifs_timer);
}
