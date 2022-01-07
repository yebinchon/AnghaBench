
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ssid_len; int channel; int bssid; int ssid; } ;
struct rtllib_device {int assoc_id; int ssid_set; TYPE_2__* dev; int (* data_hard_resume ) (TYPE_2__*) ;int (* link_change ) (TYPE_2__*) ;int state; TYPE_1__ current_network; int (* set_chan ) (TYPE_2__*,int ) ;} ;
struct TYPE_7__ {int dev_addr; } ;


 int IW_ESSID_MAX_SIZE ;
 int RTLLIB_DEFAULT_TX_ESSID ;
 int RTLLIB_LINKED ;
 int ether_addr_copy (int ,int ) ;
 int netif_carrier_on (TYPE_2__*) ;
 int notify_wx_assoc_event (struct rtllib_device*) ;
 scalar_t__ strlen (int ) ;
 int strncpy (int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static void rtllib_start_master_bss(struct rtllib_device *ieee)
{
 ieee->assoc_id = 1;

 if (ieee->current_network.ssid_len == 0) {
  strncpy(ieee->current_network.ssid,
   RTLLIB_DEFAULT_TX_ESSID,
   IW_ESSID_MAX_SIZE);

  ieee->current_network.ssid_len =
     strlen(RTLLIB_DEFAULT_TX_ESSID);
  ieee->ssid_set = 1;
 }

 ether_addr_copy(ieee->current_network.bssid, ieee->dev->dev_addr);

 ieee->set_chan(ieee->dev, ieee->current_network.channel);
 ieee->state = RTLLIB_LINKED;
 ieee->link_change(ieee->dev);
 notify_wx_assoc_event(ieee);

 if (ieee->data_hard_resume)
  ieee->data_hard_resume(ieee->dev);

 netif_carrier_on(ieee->dev);
}
