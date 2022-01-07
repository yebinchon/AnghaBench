
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_probe_response {int dummy; } ;
struct rtllib_hdr_4addr {int frame_ctl; } ;
struct rtllib_device {int softmac_features; int state; int iw_mode; int dev; int ps_task; int ps; int sta_sleep; int last_rx_ps_time; } ;


 int IEEE_SOFTMAC_PROBERS ;
 int IW_MODE_ADHOC ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;
 int RTLLIB_LINKED ;
 int RTLLIB_PS_DISABLED ;



 int WLAN_FC_GET_STYPE (int ) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int) ;
 int rtllib_process_probe_response (struct rtllib_device*,struct rtllib_probe_response*,struct rtllib_rx_stats*) ;
 int rtllib_rx_probe_rq (struct rtllib_device*,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void rtllib_rx_mgt(struct rtllib_device *ieee,
     struct sk_buff *skb,
     struct rtllib_rx_stats *stats)
{
 struct rtllib_hdr_4addr *header = (struct rtllib_hdr_4addr *)skb->data;

 if ((WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)) !=
     128) &&
     (WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)) !=
     130))
  ieee->last_rx_ps_time = jiffies;

 switch (WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl))) {

 case 130:
  netdev_dbg(ieee->dev, "received BEACON (%d)\n",
      WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)));
  rtllib_process_probe_response(
    ieee, (struct rtllib_probe_response *)header,
    stats);

  if (ieee->sta_sleep || (ieee->ps != RTLLIB_PS_DISABLED &&
      ieee->iw_mode == IW_MODE_INFRA &&
      ieee->state == RTLLIB_LINKED))
   tasklet_schedule(&ieee->ps_task);

  break;

 case 128:
  netdev_dbg(ieee->dev, "received PROBE RESPONSE (%d)\n",
      WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)));
  rtllib_process_probe_response(ieee,
         (struct rtllib_probe_response *)header, stats);
  break;
 case 129:
  netdev_dbg(ieee->dev, "received PROBE RESQUEST (%d)\n",
      WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)));
  if ((ieee->softmac_features & IEEE_SOFTMAC_PROBERS) &&
      ((ieee->iw_mode == IW_MODE_ADHOC ||
      ieee->iw_mode == IW_MODE_MASTER) &&
      ieee->state == RTLLIB_LINKED))
   rtllib_rx_probe_rq(ieee, skb);
  break;
 }
}
