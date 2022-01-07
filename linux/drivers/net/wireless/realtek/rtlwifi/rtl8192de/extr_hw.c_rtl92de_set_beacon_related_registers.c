
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ current_bandtype; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct rtl_mac {int beacon_interval; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BAND_ON_5G ;
 int REG_ATIMWND ;
 int REG_BCNTCFG ;
 int REG_BCN_INTERVAL ;
 int REG_RXTSF_OFFSET_CCK ;
 int REG_RXTSF_OFFSET_OFDM ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92de_set_beacon_related_registers(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u16 bcn_interval, atim_window;

 bcn_interval = mac->beacon_interval;
 atim_window = 2;

 rtl_write_word(rtlpriv, REG_ATIMWND, atim_window);
 rtl_write_word(rtlpriv, REG_BCN_INTERVAL, bcn_interval);
 rtl_write_word(rtlpriv, REG_BCNTCFG, 0x660f);
 rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_CCK, 0x20);
 if (rtlpriv->rtlhal.current_bandtype == BAND_ON_5G)
  rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_OFDM, 0x30);
 else
  rtl_write_byte(rtlpriv, REG_RXTSF_OFFSET_OFDM, 0x20);
 rtl_write_byte(rtlpriv, 0x606, 0x30);
}
