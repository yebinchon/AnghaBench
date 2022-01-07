
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int softmac_features; int is_set_key; int link_change_wq; scalar_t__ wap_set; int state; int dev; int (* data_hard_stop ) (int ) ;} ;


 int IEEE_SOFTMAC_TX_QUEUE ;
 scalar_t__ IS_DOT11D_ENABLE (struct rtllib_device*) ;
 int RTLLIB_NOLINK ;
 int dot11d_reset (struct rtllib_device*) ;
 int netif_carrier_off (int ) ;
 int notify_wx_assoc_event (struct rtllib_device*) ;
 int rtllib_reset_queue (struct rtllib_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (int ) ;

void rtllib_disassociate(struct rtllib_device *ieee)
{
 netif_carrier_off(ieee->dev);
 if (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)
  rtllib_reset_queue(ieee);

 if (ieee->data_hard_stop)
  ieee->data_hard_stop(ieee->dev);
 if (IS_DOT11D_ENABLE(ieee))
  dot11d_reset(ieee);
 ieee->state = RTLLIB_NOLINK;
 ieee->is_set_key = 0;
 ieee->wap_set = 0;

 schedule_delayed_work(&ieee->link_change_wq, 0);

 notify_wx_assoc_event(ieee);
}
