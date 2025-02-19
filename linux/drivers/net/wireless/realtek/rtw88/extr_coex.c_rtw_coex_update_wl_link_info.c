
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtw_traffic_stats {scalar_t__ tx_throughput; scalar_t__ rx_throughput; } ;
struct TYPE_4__ {int current_band_type; } ;
struct TYPE_3__ {int min_rssi; } ;
struct rtw_coex_dm {int* wl_rssi_state; } ;
struct rtw_coex_stat {int wl_connected; int wl_linkscan_proc; int wl_tput_dir; void* wl_gl_busy; } ;
struct rtw_coex {int under_5g; struct rtw_coex_dm dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {TYPE_2__ hal; TYPE_1__ dm_info; int sta_cnt; struct rtw_traffic_stats stats; struct rtw_chip_info* chip; struct rtw_coex coex; } ;
struct rtw_chip_info {int* wl_rssi_step; } ;
 int COEX_WL_TPUT_RX ;
 int COEX_WL_TPUT_TX ;
 int RTW_BAND_5G ;
 int RTW_FLAG_BUSY_TRAFFIC ;
 int RTW_FLAG_SCANNING ;
 int rtw_coex_next_rssi_state (struct rtw_dev*,int,int,int) ;
 int rtw_coex_wl_noisy_detect (struct rtw_dev*) ;
 void* rtw_flag_check (struct rtw_dev*,int ) ;

__attribute__((used)) static void rtw_coex_update_wl_link_info(struct rtw_dev *rtwdev, u8 reason)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 struct rtw_coex_dm *coex_dm = &coex->dm;
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_traffic_stats *stats = &rtwdev->stats;
 bool is_5G = 0;
 bool scan = 0, link = 0;
 int i;
 u8 rssi_state;
 u8 rssi_step;
 u8 rssi;

 scan = rtw_flag_check(rtwdev, RTW_FLAG_SCANNING);
 coex_stat->wl_connected = !!rtwdev->sta_cnt;
 coex_stat->wl_gl_busy = rtw_flag_check(rtwdev, RTW_FLAG_BUSY_TRAFFIC);

 if (stats->tx_throughput > stats->rx_throughput)
  coex_stat->wl_tput_dir = COEX_WL_TPUT_TX;
 else
  coex_stat->wl_tput_dir = COEX_WL_TPUT_RX;

 if (scan || link || reason == 133 ||
     reason == 132 || reason == 131)
  coex_stat->wl_linkscan_proc = 1;
 else
  coex_stat->wl_linkscan_proc = 0;

 rtw_coex_wl_noisy_detect(rtwdev);

 for (i = 0; i < 4; i++) {
  rssi_state = coex_dm->wl_rssi_state[i];
  rssi_step = chip->wl_rssi_step[i];
  rssi = rtwdev->dm_info.min_rssi;
  rssi_state = rtw_coex_next_rssi_state(rtwdev, rssi_state,
            rssi, rssi_step);
  coex_dm->wl_rssi_state[i] = rssi_state;
 }

 switch (reason) {
 case 129:
 case 128:
 case 130:

  is_5G = 1;
  break;
 case 132:
 case 131:
 case 133:

  is_5G = 0;
  break;
 default:
  if (rtwdev->hal.current_band_type == RTW_BAND_5G)
   is_5G = 1;
  else
   is_5G = 0;
  break;
 }

 coex->under_5g = is_5G;
}
