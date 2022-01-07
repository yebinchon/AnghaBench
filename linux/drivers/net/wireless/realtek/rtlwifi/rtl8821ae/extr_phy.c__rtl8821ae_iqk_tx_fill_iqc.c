
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

 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

__attribute__((used)) static void _rtl8821ae_iqk_tx_fill_iqc(struct ieee80211_hw *hw,
           enum radio_path path, u32 tx_x, u32 tx_y)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 switch (path) {
 case 128:

  rtl_set_bbreg(hw, 0x82c, BIT(31), 0x1);
  rtl_write_dword(rtlpriv, 0xc90, 0x00000080);
  rtl_write_dword(rtlpriv, 0xcc4, 0x20040000);
  rtl_write_dword(rtlpriv, 0xcc8, 0x20000000);
  rtl_set_bbreg(hw, 0xccc, 0x000007ff, tx_y);
  rtl_set_bbreg(hw, 0xcd4, 0x000007ff, tx_x);
  RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD,
    "TX_X = %x;;TX_Y = %x =====> fill to IQC\n",
    tx_x, tx_y);
  RT_TRACE(rtlpriv, COMP_IQK, DBG_LOUD,
    "0xcd4 = %x;;0xccc = %x ====>fill to IQC\n",
    rtl_get_bbreg(hw, 0xcd4, 0x000007ff),
    rtl_get_bbreg(hw, 0xccc, 0x000007ff));
  break;
 default:
  break;
 }
}
