
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int work; } ;
struct MPT3SAS_ADAPTER {int firmware_event_thread; int fw_event_list; } ;


 scalar_t__ cancel_work_sync (int *) ;
 struct fw_event_work* dequeue_next_fw_event (struct MPT3SAS_ADAPTER*) ;
 int fw_event_work_put (struct fw_event_work*) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void
_scsih_fw_event_cleanup_queue(struct MPT3SAS_ADAPTER *ioc)
{
 struct fw_event_work *fw_event;

 if (list_empty(&ioc->fw_event_list) ||
      !ioc->firmware_event_thread || in_interrupt())
  return;

 while ((fw_event = dequeue_next_fw_event(ioc))) {
  if (cancel_work_sync(&fw_event->work))
   fw_event_work_put(fw_event);

  fw_event_work_put(fw_event);
 }
}
