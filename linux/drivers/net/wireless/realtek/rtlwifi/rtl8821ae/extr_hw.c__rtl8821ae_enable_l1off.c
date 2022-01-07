
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int COMP_POWER ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int,int ,char*,...) ;
 int _rtl8821ae_dbi_read (struct rtl_priv*,int) ;
 int _rtl8821ae_dbi_write (struct rtl_priv*,int,int) ;
 int _rtl8821ae_mdio_read (struct rtl_priv*,int) ;
 int _rtl8821ae_mdio_write (struct rtl_priv*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_enable_l1off(struct ieee80211_hw *hw)
{
 u8 tmp = 0;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "--->\n");

 tmp = _rtl8821ae_dbi_read(rtlpriv, 0x160);
 if (!(tmp & (BIT(2) | BIT(3)))) {
  RT_TRACE(rtlpriv, COMP_POWER | COMP_INIT, DBG_LOUD,
    "0x160(%#x)return!!\n", tmp);
  return;
 }

 tmp = _rtl8821ae_mdio_read(rtlpriv, 0x1b);
 _rtl8821ae_mdio_write(rtlpriv, 0x1b, (tmp | BIT(4)));

 tmp = _rtl8821ae_dbi_read(rtlpriv, 0x718);
 _rtl8821ae_dbi_write(rtlpriv, 0x718, tmp | BIT(5));

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "<---\n");
}
