
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {scalar_t__ CustomerID; scalar_t__ rf_type; int rate_adaptive; } ;
struct net_device {int dummy; } ;
typedef TYPE_1__* prate_adaptive ;
struct TYPE_2__ {int ping_rssi_enable; int ping_rssi_thresh_for_ra; int upper_rssi_threshold_ratr; int middle_rssi_threshold_ratr; int low_rssi_threshold_ratr; int low_rssi_threshold_ratr_40M; int low_rssi_threshold_ratr_20M; int ping_rssi_ratr; void* low_rssi_thresh_for_ra40M; void* low_rssi_thresh_for_ra20M; void* high_rssi_thresh_for_ra; void* low2high_rssi_thresh_for_ra40M; void* low2high_rssi_thresh_for_ra20M; void* high2low_rssi_thresh_for_ra; int ratr_state; } ;


 int DM_RATR_STA_MAX ;
 void* RATE_ADAPTIVE_TH_HIGH ;
 void* RATE_ADAPTIVE_TH_LOW_20M ;
 void* RATE_ADAPTIVE_TH_LOW_40M ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T4R ;
 scalar_t__ RT_CID_819x_Netcore ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void init_rate_adaptive(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 prate_adaptive pra = (prate_adaptive)&priv->rate_adaptive;

 pra->ratr_state = DM_RATR_STA_MAX;
 pra->high2low_rssi_thresh_for_ra = RATE_ADAPTIVE_TH_HIGH;
 pra->low2high_rssi_thresh_for_ra20M = RATE_ADAPTIVE_TH_LOW_20M + 5;
 pra->low2high_rssi_thresh_for_ra40M = RATE_ADAPTIVE_TH_LOW_40M + 5;

 pra->high_rssi_thresh_for_ra = RATE_ADAPTIVE_TH_HIGH + 5;
 pra->low_rssi_thresh_for_ra20M = RATE_ADAPTIVE_TH_LOW_20M;
 pra->low_rssi_thresh_for_ra40M = RATE_ADAPTIVE_TH_LOW_40M;

 if (priv->CustomerID == RT_CID_819x_Netcore)
  pra->ping_rssi_enable = 1;
 else
  pra->ping_rssi_enable = 0;
 pra->ping_rssi_thresh_for_ra = 15;

 if (priv->rf_type == RF_2T4R) {



  pra->upper_rssi_threshold_ratr = 0x8f0f0000;
  pra->middle_rssi_threshold_ratr = 0x8f0ff000;
  pra->low_rssi_threshold_ratr = 0x8f0ff001;
  pra->low_rssi_threshold_ratr_40M = 0x8f0ff005;
  pra->low_rssi_threshold_ratr_20M = 0x8f0ff001;
  pra->ping_rssi_ratr = 0x0000000d;
 } else if (priv->rf_type == RF_1T2R) {
  pra->upper_rssi_threshold_ratr = 0x000f0000;
  pra->middle_rssi_threshold_ratr = 0x000ff000;
  pra->low_rssi_threshold_ratr = 0x000ff001;
  pra->low_rssi_threshold_ratr_40M = 0x000ff005;
  pra->low_rssi_threshold_ratr_20M = 0x000ff001;
  pra->ping_rssi_ratr = 0x0000000d;
 }

}
