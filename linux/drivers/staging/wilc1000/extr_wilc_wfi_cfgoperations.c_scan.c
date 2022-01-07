
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct wilc_priv {int cfg_scanning; struct cfg80211_scan_request* scan_req; } ;
struct wilc_vif {int ndev; struct wilc_priv priv; } ;
struct cfg80211_scan_request {int n_channels; scalar_t__ n_ssids; TYPE_2__** channels; TYPE_1__* wdev; } ;
struct TYPE_4__ {int center_freq; } ;
struct TYPE_3__ {int netdev; } ;


 int EINVAL ;
 int WILC_FW_ACTIVE_SCAN ;
 int WILC_FW_PASSIVE_SCAN ;
 int WILC_FW_USER_SCAN ;
 int WILC_MAX_NUM_SCANNED_CH ;
 int cfg_scan_result ;
 int ieee80211_frequency_to_channel (int ) ;
 int netdev_err (int ,char*) ;
 struct wilc_vif* netdev_priv (int ) ;
 int wilc_scan (struct wilc_vif*,int ,int ,int *,size_t,int ,void*,struct cfg80211_scan_request*) ;

__attribute__((used)) static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
{
 struct wilc_vif *vif = netdev_priv(request->wdev->netdev);
 struct wilc_priv *priv = &vif->priv;
 u32 i;
 int ret = 0;
 u8 scan_ch_list[WILC_MAX_NUM_SCANNED_CH];
 u8 scan_type;

 if (request->n_channels > WILC_MAX_NUM_SCANNED_CH) {
  netdev_err(vif->ndev, "Requested scanned channels over\n");
  return -EINVAL;
 }

 priv->scan_req = request;
 priv->cfg_scanning = 1;
 for (i = 0; i < request->n_channels; i++) {
  u16 freq = request->channels[i]->center_freq;

  scan_ch_list[i] = ieee80211_frequency_to_channel(freq);
 }

 if (request->n_ssids)
  scan_type = WILC_FW_ACTIVE_SCAN;
 else
  scan_type = WILC_FW_PASSIVE_SCAN;

 ret = wilc_scan(vif, WILC_FW_USER_SCAN, scan_type, scan_ch_list,
   request->n_channels, cfg_scan_result, (void *)priv,
   request);

 if (ret) {
  priv->scan_req = ((void*)0);
  priv->cfg_scanning = 0;
 }

 return ret;
}
