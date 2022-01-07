
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int _rtl88ee_set_bcn_ctrl_reg (struct ieee80211_hw*,int ,int ) ;

__attribute__((used)) static void _rtl88ee_disable_bcn_sub_func(struct ieee80211_hw *hw)
{
 _rtl88ee_set_bcn_ctrl_reg(hw, BIT(1), 0);
}
