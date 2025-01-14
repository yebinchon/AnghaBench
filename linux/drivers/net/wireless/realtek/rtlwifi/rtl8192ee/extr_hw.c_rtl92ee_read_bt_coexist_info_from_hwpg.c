
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int btcoexist; int ant_num; void* bt_type; } ;
struct TYPE_4__ {TYPE_1__ btc_info; } ;
struct rtl_priv {TYPE_2__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int ANT_X1 ;
 int ANT_X2 ;
 void* BT_RTL8192E ;
 size_t EEPROM_RF_BOARD_OPTION_92E ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92ee_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
         bool auto_load_fail, u8 *hwinfo)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 value;

 if (!auto_load_fail) {
  value = hwinfo[EEPROM_RF_BOARD_OPTION_92E];
  if (((value & 0xe0) >> 5) == 0x1)
   rtlpriv->btcoexist.btc_info.btcoexist = 1;
  else
   rtlpriv->btcoexist.btc_info.btcoexist = 0;

  rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8192E;
  rtlpriv->btcoexist.btc_info.ant_num = ANT_X2;
 } else {
  rtlpriv->btcoexist.btc_info.btcoexist = 1;
  rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8192E;
  rtlpriv->btcoexist.btc_info.ant_num = ANT_X1;
 }
}
