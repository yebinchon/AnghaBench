
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bt_coexistence; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct rtl_hal {int rfe_type; } ;
struct ieee80211_hw {int dummy; } ;


 int BMASKDWORD ;
 int BMASKRFEINV ;
 int RA_RFE_INV ;
 int RA_RFE_PINMUX ;
 int RB_RFE_INV ;
 int RB_RFE_PINMUX ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl8812ae_phy_set_rfe_reg_24g(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 tmp;

 switch (rtlhal->rfe_type) {
 case 3:
  rtl_set_bbreg(hw, RA_RFE_PINMUX, BMASKDWORD, 0x54337770);
  rtl_set_bbreg(hw, RB_RFE_PINMUX, BMASKDWORD, 0x54337770);
  rtl_set_bbreg(hw, RA_RFE_INV, BMASKRFEINV, 0x010);
  rtl_set_bbreg(hw, RB_RFE_INV, BMASKRFEINV, 0x010);
  rtl_set_bbreg(hw, 0x900, 0x00000303, 0x1);
  break;
 case 4:
  rtl_set_bbreg(hw, RA_RFE_PINMUX, BMASKDWORD, 0x77777777);
  rtl_set_bbreg(hw, RB_RFE_PINMUX, BMASKDWORD, 0x77777777);
  rtl_set_bbreg(hw, RA_RFE_INV, BMASKRFEINV, 0x001);
  rtl_set_bbreg(hw, RB_RFE_INV, BMASKRFEINV, 0x001);
  break;
 case 5:
  rtl_write_byte(rtlpriv, RA_RFE_PINMUX + 2, 0x77);
  rtl_set_bbreg(hw, RB_RFE_PINMUX, BMASKDWORD, 0x77777777);
  tmp = rtl_read_byte(rtlpriv, RA_RFE_INV + 3);
  rtl_write_byte(rtlpriv, RA_RFE_INV + 3, tmp & ~0x1);
  rtl_set_bbreg(hw, RB_RFE_INV, BMASKRFEINV, 0x000);
  break;
 case 1:
  if (rtlpriv->btcoexist.bt_coexistence) {
   rtl_set_bbreg(hw, RA_RFE_PINMUX, 0xffffff, 0x777777);
   rtl_set_bbreg(hw, RB_RFE_PINMUX, BMASKDWORD,
          0x77777777);
   rtl_set_bbreg(hw, RA_RFE_INV, 0x33f00000, 0x000);
   rtl_set_bbreg(hw, RB_RFE_INV, BMASKRFEINV, 0x000);
   break;
  }

 case 0:
 case 2:
 default:
  rtl_set_bbreg(hw, RA_RFE_PINMUX, BMASKDWORD, 0x77777777);
  rtl_set_bbreg(hw, RB_RFE_PINMUX, BMASKDWORD, 0x77777777);
  rtl_set_bbreg(hw, RA_RFE_INV, BMASKRFEINV, 0x000);
  rtl_set_bbreg(hw, RB_RFE_INV, BMASKRFEINV, 0x000);
  break;
 }
}
