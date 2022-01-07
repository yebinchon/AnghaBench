
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int macphymode; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_LOUD ;


 int REG_MAC_PHY_CTRL_NORMAL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;

 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void rtl92d_phy_config_macphymode(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 offset = REG_MAC_PHY_CTRL_NORMAL;

 switch (rtlhal->macphymode) {
 case 130:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "MacPhyMode: DUALMAC_DUALPHY\n");
  rtl_write_byte(rtlpriv, offset, 0xF3);
  break;
 case 128:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "MacPhyMode: SINGLEMAC_SINGLEPHY\n");
  rtl_write_byte(rtlpriv, offset, 0xF4);
  break;
 case 129:
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "MacPhyMode: DUALMAC_SINGLEPHY\n");
  rtl_write_byte(rtlpriv, offset, 0xF1);
  break;
 }
}
