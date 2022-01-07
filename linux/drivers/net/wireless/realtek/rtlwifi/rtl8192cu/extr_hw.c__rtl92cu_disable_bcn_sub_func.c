
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 scalar_t__ IS_NORMAL_CHIP (int ) ;
 int _rtl92cu_set_bcn_ctrl_reg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92cu_disable_bcn_sub_func(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);

 if (IS_NORMAL_CHIP(rtlhal->version))
  _rtl92cu_set_bcn_ctrl_reg(hw, BIT(1), 0);
 else
  _rtl92cu_set_bcn_ctrl_reg(hw, BIT(4), 0);
}
