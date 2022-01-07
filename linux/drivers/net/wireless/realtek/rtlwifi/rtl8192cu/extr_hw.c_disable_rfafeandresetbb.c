
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int APSDOFF ;
 int FEN_BB_GLB_RSTN ;
 int FEN_USBA ;
 int FEN_USBD ;
 int MASKBYTE0 ;
 int REG_APSD_CTRL ;
 int REG_SYS_FUNC_EN ;
 int REG_TXPAUSE ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int,int ,int) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void disable_rfafeandresetbb(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);







 u8 erfpath = 0, value8 = 0;

 rtl_write_byte(rtlpriv, REG_TXPAUSE, 0xFF);
 rtl_set_rfreg(hw, (enum radio_path)erfpath, 0x0, MASKBYTE0, 0x0);

 value8 |= APSDOFF;
 rtl_write_byte(rtlpriv, REG_APSD_CTRL, value8);
 value8 = 0;
 value8 |= (FEN_USBD | FEN_USBA | FEN_BB_GLB_RSTN);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, value8);
 value8 &= (~FEN_BB_GLB_RSTN);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, value8);
}
