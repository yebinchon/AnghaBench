
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {scalar_t__ reg_bcn_ctrl_val; } ;
struct rtl_mac {int beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BIT (int) ;
 int REG_ATIMWND ;
 int REG_BCNTCFG ;
 int REG_BCN_CTRL ;
 int REG_BCN_INTERVAL ;
 int REG_RXTSF_OFFSET_CCK ;
 int REG_RXTSF_OFFSET_OFDM ;
 int rtl92ee_disable_interrupt (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92ee_set_beacon_related_registers(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u16 bcn_interval, atim_window;

 bcn_interval = mac->beacon_interval;
 atim_window = 2;
 rtl92ee_disable_interrupt(hw);
 rtl_write_word(rtlpriv, REG_ATIMWND, atim_window);
 rtl_write_word(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
 rtl_write_word(rtlpriv, REG_BCNTCFG, 0x660f);
 rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_CCK, 0x18);
 rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_OFDM, 0x18);
 rtl_write_byte(rtlpriv, 0x606, 0x30);
 rtlpci->reg_bcn_ctrl_val |= BIT(3);
 rtl_write_byte(rtlpriv, REG_BCN_CTRL, (u8)rtlpci->reg_bcn_ctrl_val);
}
