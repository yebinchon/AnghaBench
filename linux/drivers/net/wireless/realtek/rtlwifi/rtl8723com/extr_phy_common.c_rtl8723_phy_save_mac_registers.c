
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int IQK_MAC_REG_NUM ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_read_dword (struct rtl_priv*,int) ;

void rtl8723_phy_save_mac_registers(struct ieee80211_hw *hw,
        u32 *macreg, u32 *macbackup)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;

 for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
  macbackup[i] = rtl_read_byte(rtlpriv, macreg[i]);
 macbackup[i] = rtl_read_dword(rtlpriv, macreg[i]);
}
