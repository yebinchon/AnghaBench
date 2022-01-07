
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ bt_coexist_type; scalar_t__ bt_coexistence; } ;
struct rtl_priv {TYPE_2__ btcoexist; TYPE_1__* intf_ops; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int (* enable_aspm ) (struct ieee80211_hw*) ;} ;


 int BIT (int) ;
 scalar_t__ BT_CSR_BC4 ;
 scalar_t__ BT_CSR_BC8 ;
 int IS_81XXC_VENDOR_UMC_B_CUT (int ) ;
 scalar_t__ REG_AFE_PLL_CTRL ;
 scalar_t__ REG_AFE_XTAL_CTRL ;
 scalar_t__ REG_APSD_CTRL ;
 scalar_t__ REG_APS_FSMCO ;
 int REG_GPIO_IO_SEL ;
 scalar_t__ REG_GPIO_PIN_CTRL ;
 int REG_LEDCFG0 ;
 scalar_t__ REG_MCUFWDL ;
 scalar_t__ REG_RF_CTRL ;
 scalar_t__ REG_RSV_CTRL ;
 scalar_t__ REG_SPS0_CTRL ;
 scalar_t__ REG_SYS_FUNC_EN ;
 scalar_t__ REG_TXPAUSE ;
 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 int rtl92c_firmware_selfreset (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_read_dword (struct rtl_priv*,scalar_t__) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int ,int) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int stub1 (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92ce_poweroff_adapter(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 u8 u1b_tmp;
 u32 u4b_tmp;

 rtlpriv->intf_ops->enable_aspm(hw);
 rtl_write_byte(rtlpriv, REG_TXPAUSE, 0xFF);
 rtl_set_rfreg(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
 rtl_write_byte(rtlpriv, REG_RF_CTRL, 0x00);
 rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x40);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE0);
 if (rtl_read_byte(rtlpriv, REG_MCUFWDL) & BIT(7))
  rtl92c_firmware_selfreset(hw);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN + 1, 0x51);
 rtl_write_byte(rtlpriv, REG_MCUFWDL, 0x00);
 rtl_write_dword(rtlpriv, REG_GPIO_PIN_CTRL, 0x00000000);
 u1b_tmp = rtl_read_byte(rtlpriv, REG_GPIO_PIN_CTRL);
 if ((rtlpriv->btcoexist.bt_coexistence) &&
     ((rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC4) ||
      (rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC8))) {
  rtl_write_dword(rtlpriv, REG_GPIO_PIN_CTRL, 0x00F30000 |
    (u1b_tmp << 8));
 } else {
  rtl_write_dword(rtlpriv, REG_GPIO_PIN_CTRL, 0x00FF0000 |
    (u1b_tmp << 8));
 }
 rtl_write_word(rtlpriv, REG_GPIO_IO_SEL, 0x0790);
 rtl_write_word(rtlpriv, REG_LEDCFG0, 0x8080);
 rtl_write_byte(rtlpriv, REG_AFE_PLL_CTRL, 0x80);
 if (!IS_81XXC_VENDOR_UMC_B_CUT(rtlhal->version))
  rtl_write_byte(rtlpriv, REG_SPS0_CTRL, 0x23);
 if (rtlpriv->btcoexist.bt_coexistence) {
  u4b_tmp = rtl_read_dword(rtlpriv, REG_AFE_XTAL_CTRL);
  u4b_tmp |= 0x03824800;
  rtl_write_dword(rtlpriv, REG_AFE_XTAL_CTRL, u4b_tmp);
 } else {
  rtl_write_dword(rtlpriv, REG_AFE_XTAL_CTRL, 0x0e);
 }

 rtl_write_byte(rtlpriv, REG_RSV_CTRL, 0x0e);
 rtl_write_byte(rtlpriv, REG_APS_FSMCO + 1, 0x10);
}
