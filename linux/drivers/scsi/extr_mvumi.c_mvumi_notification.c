
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mvumi_hba {TYPE_1__* pdev; } ;
struct mvumi_event_req {int count; struct mvumi_driver_event* events; } ;
struct mvumi_driver_event {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ APICDB1_EVENT_GETEVENT ;
 scalar_t__ APICDB1_HOST_GETEVENT ;
 int MAX_EVENTS_RETURNED ;
 int dev_err (int *,char*,int,int) ;
 int mvumi_proc_msg (struct mvumi_hba*,void*) ;
 int mvumi_show_event (struct mvumi_hba*,struct mvumi_driver_event*) ;

__attribute__((used)) static void mvumi_notification(struct mvumi_hba *mhba, u8 msg, void *buffer)
{
 if (msg == APICDB1_EVENT_GETEVENT) {
  int i, count;
  struct mvumi_driver_event *param = ((void*)0);
  struct mvumi_event_req *er = buffer;
  count = er->count;
  if (count > MAX_EVENTS_RETURNED) {
   dev_err(&mhba->pdev->dev, "event count[0x%x] is bigger"
     " than max event count[0x%x].\n",
     count, MAX_EVENTS_RETURNED);
   return;
  }
  for (i = 0; i < count; i++) {
   param = &er->events[i];
   mvumi_show_event(mhba, param);
  }
 } else if (msg == APICDB1_HOST_GETEVENT) {
  mvumi_proc_msg(mhba, buffer);
 }
}
