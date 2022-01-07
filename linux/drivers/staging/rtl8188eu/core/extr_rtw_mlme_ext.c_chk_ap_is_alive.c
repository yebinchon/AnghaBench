
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int dummy; } ;
struct adapter {int dummy; } ;


 scalar_t__ sta_last_rx_beacon_pkts (struct sta_info*) ;
 scalar_t__ sta_last_rx_data_pkts (struct sta_info*) ;
 scalar_t__ sta_last_rx_probersp_pkts (struct sta_info*) ;
 scalar_t__ sta_rx_beacon_pkts (struct sta_info*) ;
 scalar_t__ sta_rx_data_pkts (struct sta_info*) ;
 scalar_t__ sta_rx_probersp_pkts (struct sta_info*) ;
 int sta_update_last_rx_pkts (struct sta_info*) ;

__attribute__((used)) static u8 chk_ap_is_alive(struct adapter *padapter, struct sta_info *psta)
{
 u8 ret = 0;

 if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta)) &&
     sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta) &&
     sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta))
  ret = 0;
 else
  ret = 1;

 sta_update_last_rx_pkts(psta);

 return ret;
}
