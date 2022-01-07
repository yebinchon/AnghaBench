
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_compute_shiftstate () ;
 int kbd_event_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void compute_shiftstate(void)
{
 unsigned long flags;
 spin_lock_irqsave(&kbd_event_lock, flags);
 do_compute_shiftstate();
 spin_unlock_irqrestore(&kbd_event_lock, flags);
}
