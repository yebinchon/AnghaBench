
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int init_set; scalar_t__ lps_counter; scalar_t__ previous_state_h; scalar_t__ cstate_h; scalar_t__ previous_state; scalar_t__ cstate; void* bt_rfreg_origin_1f; void* bt_rfreg_origin_1e; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int RF_RCK1 ;
 int RF_RCK2 ;
 void* rtl_get_rfreg (struct ieee80211_hw*,int,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void rtl8723e_dm_init_bt_coexist(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->btcoexist.bt_rfreg_origin_1e
  = rtl_get_rfreg(hw, (enum radio_path)0, RF_RCK1, 0xfffff);
 rtlpriv->btcoexist.bt_rfreg_origin_1f
  = rtl_get_rfreg(hw, (enum radio_path)0, RF_RCK2, 0xf0);

 rtlpriv->btcoexist.cstate = 0;
 rtlpriv->btcoexist.previous_state = 0;
 rtlpriv->btcoexist.cstate_h = 0;
 rtlpriv->btcoexist.previous_state_h = 0;
 rtlpriv->btcoexist.lps_counter = 0;


 rtl_write_byte(rtlpriv, 0x76e, 0x4);
 rtl_write_byte(rtlpriv, 0x778, 0x3);
 rtl_write_byte(rtlpriv, 0x40, 0x20);

 rtlpriv->btcoexist.init_set = 1;
}
