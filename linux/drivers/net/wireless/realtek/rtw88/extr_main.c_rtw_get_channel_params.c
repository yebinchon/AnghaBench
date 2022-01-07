
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_channel_params {int* cch_by_bw; int center_chan; int bandwidth; int primary_chan_idx; } ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct cfg80211_chan_def {int width; int center_freq1; struct ieee80211_channel* chan; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;






 size_t RTW_CHANNEL_WIDTH_20 ;
 size_t RTW_CHANNEL_WIDTH_40 ;
 int RTW_CHANNEL_WIDTH_80 ;
 int RTW_MAX_CHANNEL_WIDTH ;

void rtw_get_channel_params(struct cfg80211_chan_def *chandef,
       struct rtw_channel_params *chan_params)
{
 struct ieee80211_channel *channel = chandef->chan;
 enum nl80211_chan_width width = chandef->width;
 u8 *cch_by_bw = chan_params->cch_by_bw;
 u32 primary_freq, center_freq;
 u8 center_chan;
 u8 bandwidth = RTW_CHANNEL_WIDTH_20;
 u8 primary_chan_idx = 0;
 u8 i;

 center_chan = channel->hw_value;
 primary_freq = channel->center_freq;
 center_freq = chandef->center_freq1;


 cch_by_bw[RTW_CHANNEL_WIDTH_20] = channel->hw_value;

 switch (width) {
 case 130:
 case 131:
  bandwidth = RTW_CHANNEL_WIDTH_20;
  primary_chan_idx = 0;
  break;
 case 129:
  bandwidth = RTW_CHANNEL_WIDTH_40;
  if (primary_freq > center_freq) {
   primary_chan_idx = 1;
   center_chan -= 2;
  } else {
   primary_chan_idx = 2;
   center_chan += 2;
  }
  break;
 case 128:
  bandwidth = RTW_CHANNEL_WIDTH_80;
  if (primary_freq > center_freq) {
   if (primary_freq - center_freq == 10) {
    primary_chan_idx = 1;
    center_chan -= 2;
   } else {
    primary_chan_idx = 3;
    center_chan -= 6;
   }



   cch_by_bw[RTW_CHANNEL_WIDTH_40] = center_chan + 4;
  } else {
   if (center_freq - primary_freq == 10) {
    primary_chan_idx = 2;
    center_chan += 2;
   } else {
    primary_chan_idx = 4;
    center_chan += 6;
   }



   cch_by_bw[RTW_CHANNEL_WIDTH_40] = center_chan - 4;
  }
  break;
 default:
  center_chan = 0;
  break;
 }

 chan_params->center_chan = center_chan;
 chan_params->bandwidth = bandwidth;
 chan_params->primary_chan_idx = primary_chan_idx;


 cch_by_bw[bandwidth] = center_chan;

 for (i = bandwidth + 1; i <= RTW_MAX_CHANNEL_WIDTH; i++)
  cch_by_bw[i] = 0;
}
