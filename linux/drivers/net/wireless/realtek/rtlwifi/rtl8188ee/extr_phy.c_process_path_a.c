
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_hal {scalar_t__ oem_id; } ;
struct ieee80211_hw {int dummy; } ;


 int READ_NEXT_RF_PAIR (int,int,int) ;
 scalar_t__ RT_CID_819X_HP ;
 int _rtl8188e_config_rf_radio_a (struct ieee80211_hw*,int,int) ;
 int _rtl88e_check_condition (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void process_path_a(struct ieee80211_hw *hw,
      u16 radioa_arraylen,
      u32 *radioa_array_table)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u32 v1, v2;
 int i;

 for (i = 0; i < radioa_arraylen; i = i + 2) {
  v1 = radioa_array_table[i];
  v2 = radioa_array_table[i+1];
  if (v1 < 0xcdcdcdcd) {
   _rtl8188e_config_rf_radio_a(hw, v1, v2);
  } else {

   if (i >= radioa_arraylen - 2)
    break;

   if (!_rtl88e_check_condition(hw, radioa_array_table[i])) {

    READ_NEXT_RF_PAIR(v1, v2, i);
    while (v2 != 0xDEAD &&
           v2 != 0xCDEF &&
           v2 != 0xCDCD &&
           i < radioa_arraylen - 2) {
     READ_NEXT_RF_PAIR(v1, v2, i);
    }
    i -= 2;
   } else {


    READ_NEXT_RF_PAIR(v1, v2, i);
    while (v2 != 0xDEAD &&
           v2 != 0xCDEF &&
           v2 != 0xCDCD &&
           i < radioa_arraylen - 2) {
     _rtl8188e_config_rf_radio_a(hw, v1, v2);
     READ_NEXT_RF_PAIR(v1, v2, i);
    }

    while (v2 != 0xDEAD &&
           i < radioa_arraylen - 2)
     READ_NEXT_RF_PAIR(v1, v2, i);
   }
  }
 }

 if (rtlhal->oem_id == RT_CID_819X_HP)
  _rtl8188e_config_rf_radio_a(hw, 0x52, 0x7E4BD);
}
