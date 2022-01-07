
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {int conf_mutex; } ;
struct TYPE_7__ {int rfkill_state; } ;
struct rtl_priv {TYPE_4__ locks; TYPE_3__ rfkill; TYPE_2__* cfg; int status; } ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* radio_onoff_checking ) (struct ieee80211_hw*,scalar_t__*) ;} ;


 int COMP_RF ;
 int DBG_DMESG ;
 int RTL_STATUS_INTERFACE_START ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,scalar_t__*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void rtl_op_rfkill_poll(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 bool radio_state;
 bool blocked;
 u8 valid = 0;

 if (!test_bit(RTL_STATUS_INTERFACE_START, &rtlpriv->status))
  return;

 mutex_lock(&rtlpriv->locks.conf_mutex);


 radio_state = rtlpriv->cfg->ops->radio_onoff_checking(hw, &valid);

 if (valid) {
  if (unlikely(radio_state != rtlpriv->rfkill.rfkill_state)) {
   rtlpriv->rfkill.rfkill_state = radio_state;

   RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
     "wireless radio switch turned %s\n",
      radio_state ? "on" : "off");

   blocked = (rtlpriv->rfkill.rfkill_state == 1) ? 0 : 1;
   wiphy_rfkill_set_hw_state(hw->wiphy, blocked);
  }
 }

 mutex_unlock(&rtlpriv->locks.conf_mutex);
}
