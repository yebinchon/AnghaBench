
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {struct ti_port* context; } ;
struct tty_struct {int dummy; } ;
struct ti_port {scalar_t__ tp_read_urb_state; int tp_lock; TYPE_1__* tp_port; } ;
struct TYPE_2__ {struct urb* read_urb; } ;


 int GFP_KERNEL ;
 void* TI_READ_URB_RUNNING ;
 scalar_t__ TI_READ_URB_STOPPED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int ti_restart_read(struct ti_port *tport, struct tty_struct *tty)
{
 struct urb *urb;
 int status = 0;
 unsigned long flags;

 spin_lock_irqsave(&tport->tp_lock, flags);

 if (tport->tp_read_urb_state == TI_READ_URB_STOPPED) {
  tport->tp_read_urb_state = TI_READ_URB_RUNNING;
  urb = tport->tp_port->read_urb;
  spin_unlock_irqrestore(&tport->tp_lock, flags);
  urb->context = tport;
  status = usb_submit_urb(urb, GFP_KERNEL);
 } else {
  tport->tp_read_urb_state = TI_READ_URB_RUNNING;
  spin_unlock_irqrestore(&tport->tp_lock, flags);
 }

 return status;
}
