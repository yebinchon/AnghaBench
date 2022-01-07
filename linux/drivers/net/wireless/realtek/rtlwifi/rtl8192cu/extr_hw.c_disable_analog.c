
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int AFSM_HSUS ;
 int APDM_HOST ;
 int LDV12_EN ;
 int PFM_ALDN ;
 int REG_APS_FSMCO ;
 int REG_LDOA15_CTRL ;
 int REG_LDOV12D_CTRL ;
 int REG_RSV_CTRL ;
 int REG_SPS0_CTRL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void disable_analog(struct ieee80211_hw *hw, bool withouthwsm)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 value16 = 0;
 u8 value8 = 0;

 if (withouthwsm) {






  rtl_write_byte(rtlpriv, REG_LDOA15_CTRL, 0x04);
  value8 = rtl_read_byte(rtlpriv, REG_LDOV12D_CTRL);
  value8 &= (~LDV12_EN);
  rtl_write_byte(rtlpriv, REG_LDOV12D_CTRL, value8);
 }





 rtl_write_byte(rtlpriv, REG_SPS0_CTRL, 0x23);
 value16 |= (APDM_HOST | AFSM_HSUS | PFM_ALDN);
 rtl_write_word(rtlpriv, REG_APS_FSMCO, (u16)value16);
 rtl_write_byte(rtlpriv, REG_RSV_CTRL, 0x0E);
}
