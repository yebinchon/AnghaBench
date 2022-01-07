
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int FEN_BBRSTB ;
 int FEN_BB_GLB_RSTN ;
 int FEN_DIO_PCIE ;
 int FEN_PCIEA ;
 int FEN_PPLL ;
 scalar_t__ REG_AFE_PLL_CTRL ;
 scalar_t__ REG_AFE_XTAL_CTRL ;
 int REG_LEDCFG0 ;
 scalar_t__ REG_RF_CTRL ;
 scalar_t__ REG_SYS_FUNC_EN ;
 int RF_EN ;
 int RF_RSTB ;
 int RF_SDMRSTB ;
 int _rtl92c_phy_bb8192c_config_parafile (struct ieee80211_hw*) ;
 int _rtl92c_phy_init_bb_rf_register_definition (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_read_word (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,scalar_t__,int) ;

bool rtl92c_phy_bb_config(struct ieee80211_hw *hw)
{
 bool rtstatus = 1;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 regval;
 u32 regvaldw;
 u8 reg_hwparafile = 1;

 _rtl92c_phy_init_bb_rf_register_definition(hw);
 regval = rtl_read_word(rtlpriv, REG_SYS_FUNC_EN);
 rtl_write_word(rtlpriv, REG_SYS_FUNC_EN,
         regval | BIT(13) | BIT(0) | BIT(1));
 rtl_write_byte(rtlpriv, REG_AFE_PLL_CTRL, 0x83);
 rtl_write_byte(rtlpriv, REG_AFE_PLL_CTRL + 1, 0xdb);
 rtl_write_byte(rtlpriv, REG_RF_CTRL, RF_EN | RF_RSTB | RF_SDMRSTB);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN,
         FEN_PPLL | FEN_PCIEA | FEN_DIO_PCIE |
         FEN_BB_GLB_RSTN | FEN_BBRSTB);
 rtl_write_byte(rtlpriv, REG_AFE_XTAL_CTRL + 1, 0x80);
 regvaldw = rtl_read_dword(rtlpriv, REG_LEDCFG0);
 rtl_write_dword(rtlpriv, REG_LEDCFG0, regvaldw | BIT(23));
 if (reg_hwparafile == 1)
  rtstatus = _rtl92c_phy_bb8192c_config_parafile(hw);
 return rtstatus;
}
