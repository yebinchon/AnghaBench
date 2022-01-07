
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {scalar_t__ CustomerID; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dig_enable_flag; int rssi_val; int rx_gain_range_min; int backoff_val; int rssi_high_power_highthresh; int rssi_high_power_lowthresh; int rssi_high_thresh; int rssi_low_thresh; void* dig_highpwr_state; void* dig_state; scalar_t__ dig_algorithm_switch; int dig_algorithm; } ;


 int DIG_ALGO_BY_RSSI ;
 int DM_DIG_BACKOFF ;
 int DM_DIG_HIGH_PWR_THRESH_HIGH ;
 int DM_DIG_HIGH_PWR_THRESH_LOW ;
 int DM_DIG_MIN ;
 int DM_DIG_MIN_NETCORE ;
 int DM_DIG_THRESH_HIGH ;
 int DM_DIG_THRESH_LOW ;
 void* DM_STA_DIG_MAX ;
 scalar_t__ RT_CID_819x_Netcore ;
 TYPE_1__ dm_digtable ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_dig_init(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 dm_digtable.dig_enable_flag = 1;
 dm_digtable.dig_algorithm = DIG_ALGO_BY_RSSI;
 dm_digtable.dig_algorithm_switch = 0;


 dm_digtable.dig_state = DM_STA_DIG_MAX;
 dm_digtable.dig_highpwr_state = DM_STA_DIG_MAX;

 dm_digtable.rssi_low_thresh = DM_DIG_THRESH_LOW;
 dm_digtable.rssi_high_thresh = DM_DIG_THRESH_HIGH;

 dm_digtable.rssi_high_power_lowthresh = DM_DIG_HIGH_PWR_THRESH_LOW;
 dm_digtable.rssi_high_power_highthresh = DM_DIG_HIGH_PWR_THRESH_HIGH;

 dm_digtable.rssi_val = 50;
 dm_digtable.backoff_val = DM_DIG_BACKOFF;
 if (priv->CustomerID == RT_CID_819x_Netcore)
  dm_digtable.rx_gain_range_min = DM_DIG_MIN_NETCORE;
 else
  dm_digtable.rx_gain_range_min = DM_DIG_MIN;

}
