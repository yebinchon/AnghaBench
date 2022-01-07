
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct ieee80211_device {TYPE_1__ current_network; int dev; int (* GetHalfNmodeSupportByAPsHandler ) (int ) ;TYPE_2__* pHTInfo; } ;
typedef enum ht_extension_chan_offset { ____Placeholder_ht_extension_chan_offset } ht_extension_chan_offset ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;
struct TYPE_4__ {int bSwBwInProgress; int bCurBW40MHz; int CurSTAExtChnlOffset; int bRegBW40MHz; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;


 int HTSetConnectBwModeCallback (struct ieee80211_device*) ;
 int HT_CHANNEL_WIDTH_20_40 ;
 int HT_EXTCHNL_OFFSET_LOWER ;
 void* HT_EXTCHNL_OFFSET_NO_EXT ;
 int HT_EXTCHNL_OFFSET_UPPER ;
 int stub1 (int ) ;

void HTSetConnectBwMode(struct ieee80211_device *ieee, enum ht_channel_width Bandwidth, enum ht_extension_chan_offset Offset)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;


 if (!pHTInfo->bRegBW40MHz)
  return;







 if (pHTInfo->bSwBwInProgress) {

  return;
 }

 if (Bandwidth == HT_CHANNEL_WIDTH_20_40 && (!ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))) {

  if (ieee->current_network.channel < 2 && Offset == HT_EXTCHNL_OFFSET_LOWER)
   Offset = HT_EXTCHNL_OFFSET_NO_EXT;
  if (Offset == HT_EXTCHNL_OFFSET_UPPER || Offset == HT_EXTCHNL_OFFSET_LOWER) {
   pHTInfo->bCurBW40MHz = 1;
   pHTInfo->CurSTAExtChnlOffset = Offset;
  } else {
   pHTInfo->bCurBW40MHz = 0;
   pHTInfo->CurSTAExtChnlOffset = HT_EXTCHNL_OFFSET_NO_EXT;
  }
 } else {
  pHTInfo->bCurBW40MHz = 0;
  pHTInfo->CurSTAExtChnlOffset = HT_EXTCHNL_OFFSET_NO_EXT;
 }

 pHTInfo->bSwBwInProgress = 1;







 HTSetConnectBwModeCallback(ieee);


}
