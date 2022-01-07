
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct wilc_rcvd_net_info {scalar_t__ rssi; int frame_len; int mgmt; scalar_t__ ch; } ;
struct wilc_priv {int cfg_scanning; int scan_req_lock; int * scan_req; TYPE_2__* dev; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_scan_info {int aborted; } ;
struct cfg80211_bss {int dummy; } ;
typedef int s32 ;
typedef enum scan_event { ____Placeholder_scan_event } scan_event ;
struct TYPE_4__ {TYPE_1__* ieee80211_ptr; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;


 int GFP_KERNEL ;
 int NL80211_BAND_2GHZ ;
 int SCAN_EVENT_ABORTED ;
 int SCAN_EVENT_DONE ;
 int SCAN_EVENT_NETWORK_FOUND ;
 struct cfg80211_bss* cfg80211_inform_bss_frame (struct wiphy*,struct ieee80211_channel*,int ,int ,int,int ) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cfg_scan_result(enum scan_event scan_event,
       struct wilc_rcvd_net_info *info, void *user_void)
{
 struct wilc_priv *priv = user_void;

 if (!priv->cfg_scanning)
  return;

 if (scan_event == SCAN_EVENT_NETWORK_FOUND) {
  s32 freq;
  struct ieee80211_channel *channel;
  struct cfg80211_bss *bss;
  struct wiphy *wiphy = priv->dev->ieee80211_ptr->wiphy;

  if (!wiphy || !info)
   return;

  freq = ieee80211_channel_to_frequency((s32)info->ch,
            NL80211_BAND_2GHZ);
  channel = ieee80211_get_channel(wiphy, freq);
  if (!channel)
   return;

  bss = cfg80211_inform_bss_frame(wiphy, channel, info->mgmt,
      info->frame_len,
      (s32)info->rssi * 100,
      GFP_KERNEL);
  if (!bss)
   cfg80211_put_bss(wiphy, bss);
 } else if (scan_event == SCAN_EVENT_DONE) {
  mutex_lock(&priv->scan_req_lock);

  if (priv->scan_req) {
   struct cfg80211_scan_info info = {
    .aborted = 0,
   };

   cfg80211_scan_done(priv->scan_req, &info);
   priv->cfg_scanning = 0;
   priv->scan_req = ((void*)0);
  }
  mutex_unlock(&priv->scan_req_lock);
 } else if (scan_event == SCAN_EVENT_ABORTED) {
  mutex_lock(&priv->scan_req_lock);

  if (priv->scan_req) {
   struct cfg80211_scan_info info = {
    .aborted = 0,
   };

   cfg80211_scan_done(priv->scan_req, &info);
   priv->cfg_scanning = 0;
   priv->scan_req = ((void*)0);
  }
  mutex_unlock(&priv->scan_req_lock);
 }
}
