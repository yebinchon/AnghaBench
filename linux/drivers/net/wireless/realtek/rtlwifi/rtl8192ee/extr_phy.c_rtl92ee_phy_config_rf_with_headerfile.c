
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int READ_NEXT_RF_PAIR (int,int,int) ;




 int* RTL8192EE_RADIOA_ARRAY ;
 int RTL8192EE_RADIOA_ARRAY_LEN ;
 int* RTL8192EE_RADIOB_ARRAY ;
 int RTL8192EE_RADIOB_ARRAY_LEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int _check_condition (struct ieee80211_hw*,int) ;
 int _rtl92ee_config_rf_radio_a (struct ieee80211_hw*,int,int) ;
 int _rtl92ee_config_rf_radio_b (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl92ee_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
        enum radio_path rfpath)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int i;
 u32 *array;
 u16 len;
 u32 v1 = 0, v2 = 0;

 switch (rfpath) {
 case 131:
  len = RTL8192EE_RADIOA_ARRAY_LEN;
  array = RTL8192EE_RADIOA_ARRAY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Radio_A:RTL8192EE_RADIOA_ARRAY %d\n" , len);
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
  for (i = 0; i < len; i = i + 2) {
   v1 = array[i];
   v2 = array[i+1];
   if (v1 < 0xcdcdcdcd) {
    _rtl92ee_config_rf_radio_a(hw, v1, v2);
    continue;
   } else {

    if (i >= len - 2)
     break;

    if (!_check_condition(hw , array[i])) {

     READ_NEXT_RF_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD && i < len - 2) {
      READ_NEXT_RF_PAIR(v1, v2, i);
     }
     i -= 2;
    } else {



     READ_NEXT_RF_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD && i < len - 2) {
      _rtl92ee_config_rf_radio_a(hw,
            v1,
            v2);
      READ_NEXT_RF_PAIR(v1, v2, i);
     }

     while (v2 != 0xDEAD && i < len - 2)
      READ_NEXT_RF_PAIR(v1, v2, i);
    }
   }
  }
  break;

 case 130:
  len = RTL8192EE_RADIOB_ARRAY_LEN;
  array = RTL8192EE_RADIOB_ARRAY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Radio_A:RTL8192EE_RADIOB_ARRAY %d\n" , len);
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
  for (i = 0; i < len; i = i + 2) {
   v1 = array[i];
   v2 = array[i+1];
   if (v1 < 0xcdcdcdcd) {
    _rtl92ee_config_rf_radio_b(hw, v1, v2);
    continue;
   } else {

    if (i >= len - 2)
     break;

    if (!_check_condition(hw , array[i])) {

     READ_NEXT_RF_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD && i < len - 2) {
      READ_NEXT_RF_PAIR(v1, v2, i);
     }
     i -= 2;
    } else {



     READ_NEXT_RF_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD && i < len - 2) {
      _rtl92ee_config_rf_radio_b(hw,
            v1,
            v2);
      READ_NEXT_RF_PAIR(v1, v2, i);
     }

     while (v2 != 0xDEAD && i < len - 2)
      READ_NEXT_RF_PAIR(v1, v2, i);
    }
   }
  }
  break;
 case 129:
 case 128:
  break;
 }
 return 1;
}
