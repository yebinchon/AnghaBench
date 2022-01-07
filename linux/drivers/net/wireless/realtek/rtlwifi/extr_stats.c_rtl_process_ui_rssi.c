
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct rtl_stats {int signalstrength; int* rx_mimo_signalstrength; int * cfo_tail; int * cfo_short; int * rx_mimo_evm_dbm; int * rx_snr; scalar_t__ is_cck; int rssi; scalar_t__ rx_pwdb_all; int packet_beacon; int packet_toself; } ;
struct TYPE_3__ {size_t total_num; int* elements; size_t index; int total_val; } ;
struct TYPE_4__ {int* rx_rssi_percentage; int * rx_cfo_tail; int * rx_cfo_short; int * rx_evm_dbm; int * rx_snr_db; int signal_strength; TYPE_1__ ui_rssi; int rssi_calculate_cnt; int pwdb_all_cnt; } ;
struct rtl_phy {size_t num_total_rfpath; } ;
struct rtl_priv {TYPE_2__ stats; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 size_t PHY_RSSI_SLID_WIN_MAX ;
 size_t RF90_PATH_A ;
 int RX_SMOOTH_FACTOR ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_translate_todbm (struct ieee80211_hw*,size_t) ;

__attribute__((used)) static void rtl_process_ui_rssi(struct ieee80211_hw *hw,
    struct rtl_stats *pstatus)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u8 rfpath;
 u32 last_rssi, tmpval;

 if (!pstatus->packet_toself && !pstatus->packet_beacon)
  return;

 rtlpriv->stats.pwdb_all_cnt += pstatus->rx_pwdb_all;
 rtlpriv->stats.rssi_calculate_cnt++;

 if (rtlpriv->stats.ui_rssi.total_num++ >= PHY_RSSI_SLID_WIN_MAX) {
  rtlpriv->stats.ui_rssi.total_num = PHY_RSSI_SLID_WIN_MAX;
  last_rssi = rtlpriv->stats.ui_rssi.elements[
   rtlpriv->stats.ui_rssi.index];
  rtlpriv->stats.ui_rssi.total_val -= last_rssi;
 }
 rtlpriv->stats.ui_rssi.total_val += pstatus->signalstrength;
 rtlpriv->stats.ui_rssi.elements[rtlpriv->stats.ui_rssi.index++] =
     pstatus->signalstrength;
 if (rtlpriv->stats.ui_rssi.index >= PHY_RSSI_SLID_WIN_MAX)
  rtlpriv->stats.ui_rssi.index = 0;
 tmpval = rtlpriv->stats.ui_rssi.total_val /
  rtlpriv->stats.ui_rssi.total_num;
 rtlpriv->stats.signal_strength = rtl_translate_todbm(hw,
  (u8) tmpval);
 pstatus->rssi = rtlpriv->stats.signal_strength;

 if (pstatus->is_cck)
  return;

 for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
      rfpath++) {
  if (rtlpriv->stats.rx_rssi_percentage[rfpath] == 0) {
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       pstatus->rx_mimo_signalstrength[rfpath];

  }
  if (pstatus->rx_mimo_signalstrength[rfpath] >
      rtlpriv->stats.rx_rssi_percentage[rfpath]) {
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       ((rtlpriv->stats.rx_rssi_percentage[rfpath] *
         (RX_SMOOTH_FACTOR - 1)) +
        (pstatus->rx_mimo_signalstrength[rfpath])) /
       (RX_SMOOTH_FACTOR);
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       rtlpriv->stats.rx_rssi_percentage[rfpath] + 1;
  } else {
   rtlpriv->stats.rx_rssi_percentage[rfpath] =
       ((rtlpriv->stats.rx_rssi_percentage[rfpath] *
         (RX_SMOOTH_FACTOR - 1)) +
        (pstatus->rx_mimo_signalstrength[rfpath])) /
       (RX_SMOOTH_FACTOR);
  }
  rtlpriv->stats.rx_snr_db[rfpath] = pstatus->rx_snr[rfpath];
  rtlpriv->stats.rx_evm_dbm[rfpath] =
     pstatus->rx_mimo_evm_dbm[rfpath];
  rtlpriv->stats.rx_cfo_short[rfpath] =
     pstatus->cfo_short[rfpath];
  rtlpriv->stats.rx_cfo_tail[rfpath] = pstatus->cfo_tail[rfpath];
 }
}
