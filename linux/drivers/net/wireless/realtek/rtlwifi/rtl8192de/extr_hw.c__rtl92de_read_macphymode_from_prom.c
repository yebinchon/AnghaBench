
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int macphymode; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int DUALMAC_DUALPHY ;
 size_t EEPROM_MAC_FUNCTION ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int SINGLEMAC_SINGLEPHY ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92de_read_macphymode_from_prom(struct ieee80211_hw *hw,
            u8 *content)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 macphy_crvalue = content[EEPROM_MAC_FUNCTION];

 if (macphy_crvalue & BIT(3)) {
  rtlhal->macphymode = SINGLEMAC_SINGLEPHY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "MacPhyMode SINGLEMAC_SINGLEPHY\n");
 } else {
  rtlhal->macphymode = DUALMAC_DUALPHY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "MacPhyMode DUALMAC_DUALPHY\n");
 }
}
