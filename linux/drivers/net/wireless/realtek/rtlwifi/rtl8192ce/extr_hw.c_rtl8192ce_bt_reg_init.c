
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_bt_iso; int reg_bt_sco; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8192ce_bt_reg_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 rtlpriv->btcoexist.reg_bt_iso = 2;

 rtlpriv->btcoexist.reg_bt_sco = 3;

 rtlpriv->btcoexist.reg_bt_sco = 0;
}
