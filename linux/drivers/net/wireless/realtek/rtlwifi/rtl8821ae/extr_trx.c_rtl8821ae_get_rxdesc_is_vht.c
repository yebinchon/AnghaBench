
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;


 int COMP_RXDESC ;
 int DBG_LOUD ;
 scalar_t__ DESC_RATEVHT1SS_MCS0 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__) ;
 scalar_t__ get_rx_desc_rxmcs (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool rtl8821ae_get_rxdesc_is_vht(struct ieee80211_hw *hw, __le32 *pdesc)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 rx_rate = 0;

 rx_rate = get_rx_desc_rxmcs(pdesc);

 RT_TRACE(rtlpriv, COMP_RXDESC, DBG_LOUD, "rx_rate=0x%02x.\n", rx_rate);

 if (rx_rate >= DESC_RATEVHT1SS_MCS0)
  return 1;
 return 0;
}
