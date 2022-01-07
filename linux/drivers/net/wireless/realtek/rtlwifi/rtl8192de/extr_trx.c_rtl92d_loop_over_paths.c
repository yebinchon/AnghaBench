
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtl_stats {int* rx_mimo_signalstrength; } ;
struct TYPE_2__ {int* rx_rssi_percentage; } ;
struct rtl_phy {size_t num_total_rfpath; } ;
struct rtl_priv {TYPE_1__ stats; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 size_t RF90_PATH_A ;
 int RX_SMOOTH_FACTOR ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92d_loop_over_paths(struct ieee80211_hw *hw,
       struct rtl_stats *pstats)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u8 rfpath;

 for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
      rfpath++) {
  if (rtlpriv->stats.rx_rssi_percentage[rfpath] == 0) {
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       pstats->rx_mimo_signalstrength[rfpath];

  }
  if (pstats->rx_mimo_signalstrength[rfpath] >
      rtlpriv->stats.rx_rssi_percentage[rfpath]) {
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       ((rtlpriv->stats.rx_rssi_percentage[rfpath] *
         (RX_SMOOTH_FACTOR - 1)) +
        (pstats->rx_mimo_signalstrength[rfpath])) /
       (RX_SMOOTH_FACTOR);
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       rtlpriv->stats.rx_rssi_percentage[rfpath] + 1;
  } else {
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       ((rtlpriv->stats.rx_rssi_percentage[rfpath] *
         (RX_SMOOTH_FACTOR - 1)) +
        (pstats->rx_mimo_signalstrength[rfpath])) /
       (RX_SMOOTH_FACTOR);
  }
 }
}
