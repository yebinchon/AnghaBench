
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 int MASKDWORD ;
 int READ_NEXT_PAIR (int,int,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int _rtl88e_check_condition (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void handle_branch2(struct ieee80211_hw *hw, u16 arraylen,
      u32 *array_table)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 v1;
 u32 v2;
 int i;

 for (i = 0; i < arraylen; i = i + 2) {
  v1 = array_table[i];
  v2 = array_table[i+1];
  if (v1 < 0xCDCDCDCD) {
   rtl_set_bbreg(hw, array_table[i], MASKDWORD,
          array_table[i + 1]);
   udelay(1);
   continue;
  } else {

   if (i >= arraylen - 2)
    break;

   if (!_rtl88e_check_condition(hw, array_table[i])) {

    READ_NEXT_PAIR(v1, v2, i);
    while (v2 != 0xDEAD &&
           v2 != 0xCDEF &&
           v2 != 0xCDCD && i < arraylen - 2)
     READ_NEXT_PAIR(v1, v2, i);
    i -= 2;
   } else {


    READ_NEXT_PAIR(v1, v2, i);
    while (v2 != 0xDEAD &&
           v2 != 0xCDEF &&
           v2 != 0xCDCD && i < arraylen - 2) {
     rtl_set_bbreg(hw, array_table[i],
            MASKDWORD,
            array_table[i + 1]);
     udelay(1);
     READ_NEXT_PAIR(v1, v2, i);
    }

    while (v2 != 0xDEAD && i < arraylen - 2)
     READ_NEXT_PAIR(v1, v2, i);
   }
  }
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\n",
    array_table[i], array_table[i + 1]);
 }
}
