
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int list; } ;
struct MPT3SAS_ADAPTER {int fw_event_lock; } ;


 int fw_event_work_put (struct fw_event_work*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_fw_event_del_from_list(struct MPT3SAS_ADAPTER *ioc, struct fw_event_work
 *fw_event)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->fw_event_lock, flags);
 if (!list_empty(&fw_event->list)) {
  list_del_init(&fw_event->list);
  fw_event_work_put(fw_event);
 }
 spin_unlock_irqrestore(&ioc->fw_event_lock, flags);
}
