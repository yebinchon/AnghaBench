
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;
 int QLINK_CHAN_WIDTH_10 ;
 int QLINK_CHAN_WIDTH_160 ;
 int QLINK_CHAN_WIDTH_20 ;
 int QLINK_CHAN_WIDTH_20_NOHT ;
 int QLINK_CHAN_WIDTH_40 ;
 int QLINK_CHAN_WIDTH_5 ;
 int QLINK_CHAN_WIDTH_80 ;
 int QLINK_CHAN_WIDTH_80P80 ;

__attribute__((used)) static u8 qlink_chanwidth_nl_to_qlink(enum nl80211_chan_width nlwidth)
{
 switch (nlwidth) {
 case 132:
  return QLINK_CHAN_WIDTH_20_NOHT;
 case 133:
  return QLINK_CHAN_WIDTH_20;
 case 131:
  return QLINK_CHAN_WIDTH_40;
 case 129:
  return QLINK_CHAN_WIDTH_80;
 case 128:
  return QLINK_CHAN_WIDTH_80P80;
 case 134:
  return QLINK_CHAN_WIDTH_160;
 case 130:
  return QLINK_CHAN_WIDTH_5;
 case 135:
  return QLINK_CHAN_WIDTH_10;
 default:
  return -1;
 }
}
