
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_hal {int during_mac0init_radiob; int during_mac1init_radioa; } ;
struct rtl_priv {struct rtl_hal rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int COMP_RF ;
 int DBG_LOUD ;
 int MAC0_ON ;
 int MAC1_ON ;
 int REG_MAC0 ;
 int REG_MAC1 ;
 int RFPGA0_XA_LSSIPARAMETER ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int rtl92de_write_dword_dbi (struct ieee80211_hw*,int ,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;

void rtl92d_phy_powerdown_anotherphy(struct ieee80211_hw *hw, bool bmac0)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
 u8 u1btmp;
 u8 direct = bmac0 ? BIT(3) | BIT(2) : BIT(3);
 u8 mac_reg = bmac0 ? REG_MAC1 : REG_MAC0;
 u8 mac_on_bit = bmac0 ? MAC1_ON : MAC0_ON;

 rtlhal->during_mac0init_radiob = 0;
 rtlhal->during_mac1init_radioa = 0;
 RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD, "====>\n");


 u1btmp = rtl_read_byte(rtlpriv, mac_reg);
 if (!(u1btmp & mac_on_bit)) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "power down\n");

  rtl92de_write_dword_dbi(hw, RFPGA0_XA_LSSIPARAMETER,
     0x00000000, direct);
 }
 RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD, "<====\n");
}
