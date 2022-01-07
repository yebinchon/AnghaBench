
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int rfkill_state; } ;
struct rtl_priv {TYPE_3__ rfkill; TYPE_2__* cfg; } ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* radio_onoff_checking ) (struct ieee80211_hw*,scalar_t__*) ;} ;


 int pr_info (char*,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,scalar_t__*) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;
 int wiphy_rfkill_start_polling (int ) ;

void rtl_init_rfkill(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 bool radio_state;
 bool blocked;
 u8 valid = 0;


 rtlpriv->rfkill.rfkill_state = 1;
 wiphy_rfkill_set_hw_state(hw->wiphy, 0);

 radio_state = rtlpriv->cfg->ops->radio_onoff_checking(hw, &valid);

 if (valid) {
  pr_info("rtlwifi: wireless switch is %s\n",
   rtlpriv->rfkill.rfkill_state ? "on" : "off");

  rtlpriv->rfkill.rfkill_state = radio_state;

  blocked = (rtlpriv->rfkill.rfkill_state == 1) ? 0 : 1;
  wiphy_rfkill_set_hw_state(hw->wiphy, blocked);
 }

 wiphy_rfkill_start_polling(hw->wiphy);
}
