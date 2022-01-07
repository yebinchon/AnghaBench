
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;
 int rtl_write_dword (struct rtl_priv*,int,int ) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_coex_table(struct ieee80211_hw *hw,
       u32 val_0x6c0, u32 val_0x6c8,
       u32 val_0x6cc)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "set coex table, set 0x6c0=0x%x\n", val_0x6c0);
 rtl_write_dword(rtlpriv, 0x6c0, val_0x6c0);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "set coex table, set 0x6c8=0x%x\n", val_0x6c8);
 rtl_write_dword(rtlpriv, 0x6c8, val_0x6c8);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "set coex table, set 0x6cc=0x%x\n", val_0x6cc);
 rtl_write_byte(rtlpriv, 0x6cc, val_0x6cc);
}
