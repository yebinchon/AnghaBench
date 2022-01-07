
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 int ** RTL8812AE_TXPWR_LMT ;
 int RTL8812AE_TXPWR_LMT_ARRAY_LEN ;
 int ** RTL8821AE_TXPWR_LMT ;
 int RTL8821AE_TXPWR_LMT_ARRAY_LEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl8812ae_phy_config_bb_txpwr_lmt (struct ieee80211_hw*,int *,int *,int *,int *,int *,int *,int *) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_phy_read_and_config_txpwr_lmt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 u32 i = 0;
 u32 array_len;
 u8 **array;

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
  array_len = RTL8812AE_TXPWR_LMT_ARRAY_LEN;
  array = RTL8812AE_TXPWR_LMT;
 } else {
  array_len = RTL8821AE_TXPWR_LMT_ARRAY_LEN;
  array = RTL8821AE_TXPWR_LMT;
 }

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
   "\n");

 for (i = 0; i < array_len; i += 7) {
  u8 *regulation = array[i];
  u8 *band = array[i+1];
  u8 *bandwidth = array[i+2];
  u8 *rate = array[i+3];
  u8 *rf_path = array[i+4];
  u8 *chnl = array[i+5];
  u8 *val = array[i+6];

  _rtl8812ae_phy_config_bb_txpwr_lmt(hw, regulation, band,
         bandwidth, rate, rf_path,
         chnl, val);
 }
}
