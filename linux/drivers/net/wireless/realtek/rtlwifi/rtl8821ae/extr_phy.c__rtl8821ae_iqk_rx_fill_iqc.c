
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int BIT (int) ;
 int COMP_IQK ;
 int DBG_LOUD ;

 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;

__attribute__((used)) static void _rtl8821ae_iqk_rx_fill_iqc(struct ieee80211_hw *hw,
           enum radio_path path, u32 rx_x, u32 rx_y)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 switch (path) {
 case 128:
  rtl_set_bbreg(hw, 0x82c, BIT(31), 0x0);
  rtl_set_bbreg(hw, 0xc10, 0x000003ff, rx_x>>1);
  rtl_set_bbreg(hw, 0xc10, 0x03ff0000, rx_y>>1);
  RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD,
    "rx_x = %x;;rx_y = %x ====>fill to IQC\n",
    rx_x>>1, rx_y>>1);
  RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD,
    "0xc10 = %x ====>fill to IQC\n",
    rtl_read_dword(rtlpriv, 0xc10));
  break;
 default:
  break;
 }
}
