
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_hdr_3addr {int frame_ctl; } ;
struct rtllib_device {int softmac_features; int iw_mode; int proto_started; } ;


 int IEEE_SOFTMAC_ASSOCIATE ;
 int IW_MODE_MASTER ;
 int WLAN_FC_GET_STYPE (int ) ;
 int le16_to_cpu (int ) ;
 int rtllib_process_action (struct rtllib_device*,struct sk_buff*) ;
 int rtllib_rx_assoc_resp (struct rtllib_device*,struct sk_buff*,struct rtllib_rx_stats*) ;
 int rtllib_rx_assoc_rq (struct rtllib_device*,struct sk_buff*) ;
 int rtllib_rx_auth (struct rtllib_device*,struct sk_buff*,struct rtllib_rx_stats*) ;
 int rtllib_rx_deauth (struct rtllib_device*,struct sk_buff*) ;

inline int rtllib_rx_frame_softmac(struct rtllib_device *ieee,
       struct sk_buff *skb,
       struct rtllib_rx_stats *rx_stats, u16 type,
       u16 stype)
{
 struct rtllib_hdr_3addr *header = (struct rtllib_hdr_3addr *) skb->data;
 u16 frame_ctl;

 if (!ieee->proto_started)
  return 0;

 frame_ctl = le16_to_cpu(header->frame_ctl);
 switch (WLAN_FC_GET_STYPE(frame_ctl)) {
 case 134:
 case 128:
  if (rtllib_rx_assoc_resp(ieee, skb, rx_stats) == 1)
   return 1;
  break;
 case 135:
 case 129:
  if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
       ieee->iw_mode == IW_MODE_MASTER)
   rtllib_rx_assoc_rq(ieee, skb);
  break;
 case 133:
  rtllib_rx_auth(ieee, skb, rx_stats);
  break;
 case 131:
 case 132:
  rtllib_rx_deauth(ieee, skb);
  break;
 case 130:
  rtllib_process_action(ieee, skb);
  break;
 default:
  return -1;
 }
 return 0;
}
