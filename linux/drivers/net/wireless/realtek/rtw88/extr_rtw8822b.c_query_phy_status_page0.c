
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_rx_pkt_stat {scalar_t__* rx_power; int signal_power; int bw; int rssi; } ;
struct rtw_dev {int dummy; } ;
typedef int s8 ;


 scalar_t__ GET_PHY_STAT_P0_PWDB (scalar_t__*) ;
 size_t RF_PATH_A ;
 int RTW_CHANNEL_WIDTH_20 ;
 int max (scalar_t__,int) ;
 int rtw_phy_rf_power_2_rssi (scalar_t__*,int) ;

__attribute__((used)) static void query_phy_status_page0(struct rtw_dev *rtwdev, u8 *phy_status,
       struct rtw_rx_pkt_stat *pkt_stat)
{
 s8 min_rx_power = -120;
 u8 pwdb = GET_PHY_STAT_P0_PWDB(phy_status);


 pkt_stat->rx_power[RF_PATH_A] = pwdb - 110;
 pkt_stat->rssi = rtw_phy_rf_power_2_rssi(pkt_stat->rx_power, 1);
 pkt_stat->bw = RTW_CHANNEL_WIDTH_20;
 pkt_stat->signal_power = max(pkt_stat->rx_power[RF_PATH_A],
         min_rx_power);
}
