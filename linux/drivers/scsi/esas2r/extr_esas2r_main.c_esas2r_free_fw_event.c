
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_fw_event_work {int list; struct esas2r_adapter* a; } ;
struct esas2r_adapter {int fw_event_lock; } ;


 int kfree (struct esas2r_fw_event_work*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
esas2r_free_fw_event(struct esas2r_fw_event_work *fw_event)
{
 unsigned long flags;
 struct esas2r_adapter *a = fw_event->a;

 spin_lock_irqsave(&a->fw_event_lock, flags);
 list_del(&fw_event->list);
 kfree(fw_event);
 spin_unlock_irqrestore(&a->fw_event_lock, flags);
}
