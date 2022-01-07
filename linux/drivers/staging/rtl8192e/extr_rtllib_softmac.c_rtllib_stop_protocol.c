
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtllib_device {int proto_stoppping; scalar_t__ state; scalar_t__ iw_mode; scalar_t__ assocresp_ies_len; int * assocresp_ies; scalar_t__ assocreq_ies_len; int * assocreq_ies; int link_change_wq; int start_ibss_wq; int associate_retry_wq; int associate_timer; int dev; int (* rtllib_ips_leave ) (int ) ;scalar_t__ proto_started; } ;


 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ RTLLIB_ASSOCIATING_AUTHENTICATED ;
 scalar_t__ RTLLIB_LINKED ;
 scalar_t__ RTLLIB_NOLINK ;
 int RemoveAllTS (struct rtllib_device*) ;
 int SendDisassociation (struct rtllib_device*,int,int ) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int kfree (int *) ;
 int rtllib_disassociate (struct rtllib_device*) ;
 int rtllib_stop_scan (struct rtllib_device*) ;
 int rtllib_stop_send_beacons (struct rtllib_device*) ;
 int stub1 (int ) ;

void rtllib_stop_protocol(struct rtllib_device *ieee, u8 shutdown)
{
 if (!ieee->proto_started)
  return;

 if (shutdown) {
  ieee->proto_started = 0;
  ieee->proto_stoppping = 1;
  if (ieee->rtllib_ips_leave != ((void*)0))
   ieee->rtllib_ips_leave(ieee->dev);
 }

 rtllib_stop_send_beacons(ieee);
 del_timer_sync(&ieee->associate_timer);
 cancel_delayed_work_sync(&ieee->associate_retry_wq);
 cancel_delayed_work_sync(&ieee->start_ibss_wq);
 cancel_delayed_work_sync(&ieee->link_change_wq);
 rtllib_stop_scan(ieee);

 if (ieee->state <= RTLLIB_ASSOCIATING_AUTHENTICATED)
  ieee->state = RTLLIB_NOLINK;

 if (ieee->state == RTLLIB_LINKED) {
  if (ieee->iw_mode == IW_MODE_INFRA)
   SendDisassociation(ieee, 1, WLAN_REASON_DEAUTH_LEAVING);
  rtllib_disassociate(ieee);
 }

 if (shutdown) {
  RemoveAllTS(ieee);
  ieee->proto_stoppping = 0;
 }
 kfree(ieee->assocreq_ies);
 ieee->assocreq_ies = ((void*)0);
 ieee->assocreq_ies_len = 0;
 kfree(ieee->assocresp_ies);
 ieee->assocresp_ies = ((void*)0);
 ieee->assocresp_ies_len = 0;
}
