
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
 int REG_RF_CTRL ;
 int REG_SYS_FUNC_EN ;
 int RF_EN ;
 int RF_RSTB ;
 int RF_SDMRSTB ;
 int _rtl88e_phy_bb8188e_config_parafile (struct ieee80211_hw*) ;
 int _rtl88e_phy_init_bb_rf_register_definition (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int) ;
 int rtl_read_word (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

bool rtl88e_phy_bb_config(struct ieee80211_hw *hw)
{
 bool rtstatus = 1;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 regval;
 u8 b_reg_hwparafile = 1;
 u32 tmp;
 _rtl88e_phy_init_bb_rf_register_definition(hw);
 regval = rtl_read_word(rtlpriv, REG_SYS_FUNC_EN);
 rtl_write_word(rtlpriv, REG_SYS_FUNC_EN,
         regval | BIT(13) | BIT(0) | BIT(1));

 rtl_write_byte(rtlpriv, REG_RF_CTRL, RF_EN | RF_RSTB | RF_SDMRSTB);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN,
         FEN_PPLL | FEN_PCIEA | FEN_DIO_PCIE |
         FEN_BB_GLB_RSTN | FEN_BBRSTB);
 tmp = rtl_read_dword(rtlpriv, 0x4c);
 rtl_write_dword(rtlpriv, 0x4c, tmp | BIT(23));
 if (b_reg_hwparafile == 1)
  rtstatus = _rtl88e_phy_bb8188e_config_parafile(hw);
 return rtstatus;
}
