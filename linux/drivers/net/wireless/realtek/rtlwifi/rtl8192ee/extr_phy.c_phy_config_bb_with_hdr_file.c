
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BASEBAND_CONFIG_AGC_TAB ;
 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 int COMP_INIT ;
 int DBG_TRACE ;
 int MASKDWORD ;
 int READ_NEXT_PAIR (int,int,int) ;
 int* RTL8192EE_AGC_TAB_ARRAY ;
 int RTL8192EE_AGC_TAB_ARRAY_LEN ;
 int* RTL8192EE_PHY_REG_ARRAY ;
 int RTL8192EE_PHY_REG_ARRAY_LEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int _check_condition (struct ieee80211_hw*,int) ;
 int _rtl92ee_config_bb_reg (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static bool phy_config_bb_with_hdr_file(struct ieee80211_hw *hw,
     u8 configtype)
{
 int i;
 u32 *array;
 u16 len;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 v1 = 0, v2 = 0;

 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  len = RTL8192EE_PHY_REG_ARRAY_LEN;
  array = RTL8192EE_PHY_REG_ARRAY;

  for (i = 0; i < len; i = i + 2) {
   v1 = array[i];
   v2 = array[i+1];
   if (v1 < 0xcdcdcdcd) {
    _rtl92ee_config_bb_reg(hw, v1, v2);
   } else {

    if (i >= len - 2)
     break;

    if (!_check_condition(hw , array[i])) {

     READ_NEXT_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD && i < len - 2) {
      READ_NEXT_PAIR(v1, v2, i);
     }
     i -= 2;
    } else {



     READ_NEXT_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD && i < len - 2) {
      _rtl92ee_config_bb_reg(hw, v1,
               v2);
      READ_NEXT_PAIR(v1, v2, i);
     }

     while (v2 != 0xDEAD && i < len - 2)
      READ_NEXT_PAIR(v1, v2, i);
    }
   }
  }
 } else if (configtype == BASEBAND_CONFIG_AGC_TAB) {
  len = RTL8192EE_AGC_TAB_ARRAY_LEN;
  array = RTL8192EE_AGC_TAB_ARRAY;

  for (i = 0; i < len; i = i + 2) {
   v1 = array[i];
   v2 = array[i+1];
   if (v1 < 0xCDCDCDCD) {
    rtl_set_bbreg(hw, array[i], MASKDWORD,
           array[i + 1]);
    udelay(1);
    continue;
      } else{

    if (i >= len - 2)
     break;

    if (!_check_condition(hw , array[i])) {

     READ_NEXT_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD &&
            i < len - 2) {
      READ_NEXT_PAIR(v1, v2, i);
     }
     i -= 2;
    } else {



     READ_NEXT_PAIR(v1, v2, i);
     while (v2 != 0xDEAD &&
            v2 != 0xCDEF &&
            v2 != 0xCDCD &&
            i < len - 2) {
      rtl_set_bbreg(hw,
             array[i],
             MASKDWORD,
             array[i + 1]);
      udelay(1);
      READ_NEXT_PAIR(v1 , v2 , i);
     }

     while (v2 != 0xDEAD &&
            i < len - 2) {
      READ_NEXT_PAIR(v1 , v2 , i);
     }
    }
   }
   RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
     "The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\n",
     array[i],
     array[i + 1]);
  }
 }
 return 1;
}
