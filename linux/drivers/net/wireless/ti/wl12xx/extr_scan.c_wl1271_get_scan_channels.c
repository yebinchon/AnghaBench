
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int scanned_ch; } ;
struct conf_scan_settings {int dwell_time_passive; int max_dwell_time_active; int min_dwell_time_active; } ;
struct TYPE_4__ {struct conf_scan_settings scan; } ;
struct wl1271 {TYPE_3__ scan; TYPE_1__ conf; } ;
struct cfg80211_scan_request {int n_channels; TYPE_2__** channels; } ;
struct basic_scan_channel_params {int bssid_msb; int bssid_lsb; scalar_t__ channel; int tx_power_att; scalar_t__ early_termination; void* max_duration; void* min_duration; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_5__ {int flags; int band; scalar_t__ hw_value; int max_power; int beacon_found; int max_antenna_gain; int center_freq; } ;


 int DEBUG_SCAN ;
 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IR ;
 int WL1271_SCAN_MAX_CHANNELS ;
 void* cpu_to_le32 (int ) ;
 int memset (int *,int,int) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;
 int wl1271_debug (int ,char*,int,...) ;

__attribute__((used)) static int wl1271_get_scan_channels(struct wl1271 *wl,
        struct cfg80211_scan_request *req,
        struct basic_scan_channel_params *channels,
        enum nl80211_band band, bool passive)
{
 struct conf_scan_settings *c = &wl->conf.scan;
 int i, j;
 u32 flags;

 for (i = 0, j = 0;
      i < req->n_channels && j < WL1271_SCAN_MAX_CHANNELS;
      i++) {
  flags = req->channels[i]->flags;

  if (!test_bit(i, wl->scan.scanned_ch) &&
      !(flags & IEEE80211_CHAN_DISABLED) &&
      (req->channels[i]->band == band) &&






      (passive || !(flags & IEEE80211_CHAN_NO_IR))) {
   wl1271_debug(DEBUG_SCAN, "band %d, center_freq %d ",
         req->channels[i]->band,
         req->channels[i]->center_freq);
   wl1271_debug(DEBUG_SCAN, "hw_value %d, flags %X",
         req->channels[i]->hw_value,
         req->channels[i]->flags);
   wl1271_debug(DEBUG_SCAN,
         "max_antenna_gain %d, max_power %d",
         req->channels[i]->max_antenna_gain,
         req->channels[i]->max_power);
   wl1271_debug(DEBUG_SCAN, "beacon_found %d",
         req->channels[i]->beacon_found);

   if (!passive) {
    channels[j].min_duration =
     cpu_to_le32(c->min_dwell_time_active);
    channels[j].max_duration =
     cpu_to_le32(c->max_dwell_time_active);
   } else {
    channels[j].min_duration =
     cpu_to_le32(c->dwell_time_passive);
    channels[j].max_duration =
     cpu_to_le32(c->dwell_time_passive);
   }
   channels[j].early_termination = 0;
   channels[j].tx_power_att = req->channels[i]->max_power;
   channels[j].channel = req->channels[i]->hw_value;

   memset(&channels[j].bssid_lsb, 0xff, 4);
   memset(&channels[j].bssid_msb, 0xff, 2);


   set_bit(i, wl->scan.scanned_ch);

   j++;
  }
 }

 return j;
}
