
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_event_wait {int list; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vt_event_lock ;

__attribute__((used)) static void __vt_event_dequeue(struct vt_event_wait *vw)
{
 unsigned long flags;


 spin_lock_irqsave(&vt_event_lock, flags);
 list_del(&vw->list);
 spin_unlock_irqrestore(&vt_event_lock, flags);
}
