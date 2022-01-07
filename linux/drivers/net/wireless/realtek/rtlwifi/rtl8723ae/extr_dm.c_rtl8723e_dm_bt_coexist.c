
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int init_set; int bt_coexistence; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int rtl8723e_dm_bt_coexist_8723 (struct ieee80211_hw*) ;
 int rtl8723e_dm_init_bt_coexist (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;

void rtl8723e_dm_bt_coexist(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 tmp_byte = 0;
 if (!rtlpriv->btcoexist.bt_coexistence) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[DM]{BT], BT not exist!!\n");
  return;
 }

 if (!rtlpriv->btcoexist.init_set) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[DM][BT], rtl8723e_dm_bt_coexist()\n");
  rtl8723e_dm_init_bt_coexist(hw);
 }

 tmp_byte = rtl_read_byte(rtlpriv, 0x40);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[DM][BT], 0x40 is 0x%x\n", tmp_byte);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[DM][BT], bt_dm_coexist start\n");
 rtl8723e_dm_bt_coexist_8723(hw);
}
