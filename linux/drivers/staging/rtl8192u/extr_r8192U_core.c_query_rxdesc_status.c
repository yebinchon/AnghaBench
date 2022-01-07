
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct rx_drvinfo_819x_usb {int PartAggr; int FirstAGGR; int BW; int TSFL; int SPLCP; int RxRate; int RxHT; } ;
struct rx_desc_819x_usb {int Length; int ICV; int CRC32; int SWDec; int RxDrvInfoSize; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct r8192_priv {TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int Length; int bICV; int bCRC; int bHwError; int Decrypted; int rate; int bIsAMPDU; int bFirstMPDU; int bShift; int RxIs40MHzPacket; int RxDrvInfoSize; int RxBufShift; int TimeStampLow; int bShortPreamble; } ;
struct TYPE_4__ {scalar_t__ pairwise_key_type; TYPE_1__* pHTInfo; } ;
struct TYPE_3__ {scalar_t__ bCurrentHTSupport; } ;


 int COMP_RXDESC ;
 int HwRateToMRate90 (int ,int ) ;
 scalar_t__ KEY_TYPE_CCMP ;
 int MAX_8192U_RX_SIZE ;
 int MGN_1M ;
 int RT_TRACE (int ,char*,int,int) ;
 int TranslateRxSignalStuff819xUsb (struct sk_buff*,struct ieee80211_rx_stats*,struct rx_drvinfo_819x_usb*) ;
 int UpdateReceivedRateHistogramStatistics8190 (struct net_device*,struct ieee80211_rx_stats*) ;
 int UpdateRxPktTimeStamp8190 (struct net_device*,struct ieee80211_rx_stats*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void query_rxdesc_status(struct sk_buff *skb,
    struct ieee80211_rx_stats *stats,
    bool bIsRxAggrSubframe)
{
 struct rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
 struct net_device *dev = info->dev;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct rx_drvinfo_819x_usb *driver_info = ((void*)0);


 struct rx_desc_819x_usb *desc = (struct rx_desc_819x_usb *)skb->data;

 stats->Length = desc->Length;
 stats->RxDrvInfoSize = desc->RxDrvInfoSize;
 stats->RxBufShift = 0;
 stats->bICV = desc->ICV;
 stats->bCRC = desc->CRC32;
 stats->bHwError = stats->bCRC | stats->bICV;

 stats->Decrypted = !desc->SWDec;

 if ((priv->ieee80211->pHTInfo->bCurrentHTSupport) &&
     (priv->ieee80211->pairwise_key_type == KEY_TYPE_CCMP))
  stats->bHwError = 0;
 else
  stats->bHwError = stats->bCRC | stats->bICV;

 if (stats->Length < 24 || stats->Length > MAX_8192U_RX_SIZE)
  stats->bHwError |= 1;




 if (stats->RxDrvInfoSize != 0) {
  driver_info = (struct rx_drvinfo_819x_usb *)(
    skb->data
    + sizeof(struct rx_desc_819x_usb)
    + stats->RxBufShift
         );


  if (!stats->bHwError) {
   u8 ret_rate;

   ret_rate = HwRateToMRate90(driver_info->RxHT,
         driver_info->RxRate);
   if (ret_rate == 0xff) {





    stats->bHwError = 1;

    stats->rate = MGN_1M;
   } else {
    stats->rate = ret_rate;
   }
  } else {
   stats->rate = 0x02;
  }

  stats->bShortPreamble = driver_info->SPLCP;


  UpdateReceivedRateHistogramStatistics8190(dev, stats);

  stats->bIsAMPDU = (driver_info->PartAggr == 1);
  stats->bFirstMPDU = (driver_info->PartAggr == 1) &&
        (driver_info->FirstAGGR == 1);
  stats->TimeStampLow = driver_info->TSFL;

  UpdateRxPktTimeStamp8190(dev, stats);


  if (driver_info->FirstAGGR == 1 || driver_info->PartAggr == 1)
   RT_TRACE(COMP_RXDESC,
    "driver_info->FirstAGGR = %d, driver_info->PartAggr = %d\n",
     driver_info->FirstAGGR, driver_info->PartAggr);
 }

 skb_pull(skb, sizeof(struct rx_desc_819x_usb));

 if ((stats->RxBufShift + stats->RxDrvInfoSize) > 0) {
  stats->bShift = 1;
  skb_pull(skb, stats->RxBufShift + stats->RxDrvInfoSize);
 }

 if (driver_info) {
  stats->RxIs40MHzPacket = driver_info->BW;
  TranslateRxSignalStuff819xUsb(skb, stats, driver_info);
 }
}
