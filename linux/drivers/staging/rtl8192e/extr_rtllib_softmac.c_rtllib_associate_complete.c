
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int associate_complete_wq; int state; int associate_timer; } ;


 int RTLLIB_LINKED ;
 int del_timer_sync (int *) ;
 int rtllib_sta_send_associnfo (struct rtllib_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void rtllib_associate_complete(struct rtllib_device *ieee)
{
 del_timer_sync(&ieee->associate_timer);

 ieee->state = RTLLIB_LINKED;
 rtllib_sta_send_associnfo(ieee);

 schedule_work(&ieee->associate_complete_wq);
}
