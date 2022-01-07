
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_stats {int* rx_mimo_sig_qual; } ;
struct TYPE_2__ {int* rx_evm_percentage; } ;
struct rtl_priv {TYPE_1__ stats; } ;
struct ieee80211_hw {int dummy; } ;


 int RX_SMOOTH_FACTOR ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92d_loop_over_streams(struct ieee80211_hw *hw,
         struct rtl_stats *pstats)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int stream;

 for (stream = 0; stream < 2; stream++) {
  if (pstats->rx_mimo_sig_qual[stream] != -1) {
   if (rtlpriv->stats.rx_evm_percentage[stream] == 0) {
    rtlpriv->stats.rx_evm_percentage[stream] =
        pstats->rx_mimo_sig_qual[stream];
   }
   rtlpriv->stats.rx_evm_percentage[stream] =
       ((rtlpriv->stats.rx_evm_percentage[stream]
         * (RX_SMOOTH_FACTOR - 1)) +
        (pstats->rx_mimo_sig_qual[stream] * 1)) /
       (RX_SMOOTH_FACTOR);
  }
 }
}
