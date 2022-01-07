
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int IQK_MAC_REG_NUM ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

__attribute__((used)) static void _rtl92ee_phy_reload_mac_registers(struct ieee80211_hw *hw,
           u32 *macreg, u32 *macbackup)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;

 for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
  rtl_write_byte(rtlpriv, macreg[i], (u8)macbackup[i]);
 rtl_write_dword(rtlpriv, macreg[i], macbackup[i]);
}
