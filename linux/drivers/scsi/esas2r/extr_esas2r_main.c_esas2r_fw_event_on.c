
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int fw_event_lock; scalar_t__ fw_events_off; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
esas2r_fw_event_on(struct esas2r_adapter *a)
{
 unsigned long flags;

 spin_lock_irqsave(&a->fw_event_lock, flags);
 a->fw_events_off = 0;
 spin_unlock_irqrestore(&a->fw_event_lock, flags);
}
