
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;


 int NL80211_CHAN_WIDTH_10 ;
 int NL80211_CHAN_WIDTH_160 ;
 int NL80211_CHAN_WIDTH_20 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_40 ;
 int NL80211_CHAN_WIDTH_5 ;
 int NL80211_CHAN_WIDTH_80 ;
 int NL80211_CHAN_WIDTH_80P80 ;
__attribute__((used)) static enum nl80211_chan_width qlink_chanwidth_to_nl(u8 qlw)
{
 switch (qlw) {
 case 132:
  return NL80211_CHAN_WIDTH_20_NOHT;
 case 133:
  return NL80211_CHAN_WIDTH_20;
 case 131:
  return NL80211_CHAN_WIDTH_40;
 case 129:
  return NL80211_CHAN_WIDTH_80;
 case 128:
  return NL80211_CHAN_WIDTH_80P80;
 case 134:
  return NL80211_CHAN_WIDTH_160;
 case 130:
  return NL80211_CHAN_WIDTH_5;
 case 135:
  return NL80211_CHAN_WIDTH_10;
 default:
  return -1;
 }
}
