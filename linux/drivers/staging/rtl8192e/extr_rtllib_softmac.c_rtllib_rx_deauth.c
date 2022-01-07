
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtllib_hdr_3addr {int addr2; int frame_ctl; int addr3; } ;
struct rtllib_disassoc {int reason; } ;
struct TYPE_6__ {int bBusyTraffic; } ;
struct TYPE_5__ {int reassoc; } ;
struct TYPE_4__ {int bssid; } ;
struct rtllib_device {int softmac_features; scalar_t__ state; scalar_t__ iw_mode; int is_roaming; int (* rtllib_ap_sec_type ) (struct rtllib_device*) ;int associate_procedure_wq; int dev; int (* LedControlHandler ) (int ,int ) ;TYPE_3__ LinkDetectInfo; TYPE_2__ softmac_stats; TYPE_1__ current_network; } ;


 int ETH_ALEN ;
 int IEEE_SOFTMAC_ASSOCIATE ;
 scalar_t__ IW_MODE_INFRA ;
 int LED_CTL_START_TO_LINK ;
 scalar_t__ RTLLIB_ASSOCIATING ;
 scalar_t__ RTLLIB_LINKED ;
 int RemovePeerTS (struct rtllib_device*,int ) ;
 int SEC_ALG_CCMP ;
 int SEC_ALG_TKIP ;
 int WLAN_FC_GET_STYPE (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int netdev_info (int ,char*,int ,int ) ;
 int rtllib_disassociate (struct rtllib_device*) ;
 int schedule_delayed_work (int *,int) ;
 int stub1 (int ,int ) ;
 int stub2 (struct rtllib_device*) ;

__attribute__((used)) static inline int
rtllib_rx_deauth(struct rtllib_device *ieee, struct sk_buff *skb)
{
 struct rtllib_hdr_3addr *header = (struct rtllib_hdr_3addr *) skb->data;
 u16 frame_ctl;

 if (memcmp(header->addr3, ieee->current_network.bssid, ETH_ALEN) != 0)
  return 0;




 if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
     ieee->state == RTLLIB_LINKED &&
     (ieee->iw_mode == IW_MODE_INFRA)) {
  frame_ctl = le16_to_cpu(header->frame_ctl);
  netdev_info(ieee->dev,
       "==========>received disassoc/deauth(%x) frame, reason code:%x\n",
       WLAN_FC_GET_STYPE(frame_ctl),
       ((struct rtllib_disassoc *)skb->data)->reason);
  ieee->state = RTLLIB_ASSOCIATING;
  ieee->softmac_stats.reassoc++;
  ieee->is_roaming = 1;
  ieee->LinkDetectInfo.bBusyTraffic = 0;
  rtllib_disassociate(ieee);
  RemovePeerTS(ieee, header->addr2);
  if (ieee->LedControlHandler != ((void*)0))
   ieee->LedControlHandler(ieee->dev,
      LED_CTL_START_TO_LINK);

  if (!(ieee->rtllib_ap_sec_type(ieee) &
      (SEC_ALG_CCMP|SEC_ALG_TKIP)))
   schedule_delayed_work(
           &ieee->associate_procedure_wq, 5);
 }
 return 0;
}
