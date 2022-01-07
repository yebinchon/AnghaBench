
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct ti_port {scalar_t__ tp_read_urb_state; int tp_lock; } ;


 scalar_t__ TI_READ_URB_RUNNING ;
 scalar_t__ TI_READ_URB_STOPPING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ti_stop_read(struct ti_port *tport, struct tty_struct *tty)
{
 unsigned long flags;

 spin_lock_irqsave(&tport->tp_lock, flags);

 if (tport->tp_read_urb_state == TI_READ_URB_RUNNING)
  tport->tp_read_urb_state = TI_READ_URB_STOPPING;

 spin_unlock_irqrestore(&tport->tp_lock, flags);
}
