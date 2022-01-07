
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delta_msr_wait; } ;
struct async_icount {int dummy; } ;
struct usb_serial_port {TYPE_1__ port; int lock; struct async_icount icount; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int EIO ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_initialized (TYPE_1__*) ;
 int usb_serial_generic_msr_changed (struct tty_struct*,unsigned long,struct async_icount*) ;
 int wait_event_interruptible (int ,int ) ;

int usb_serial_generic_tiocmiwait(struct tty_struct *tty, unsigned long arg)
{
 struct usb_serial_port *port = tty->driver_data;
 struct async_icount cnow;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&port->lock, flags);
 cnow = port->icount;
 spin_unlock_irqrestore(&port->lock, flags);

 ret = wait_event_interruptible(port->port.delta_msr_wait,
   usb_serial_generic_msr_changed(tty, arg, &cnow));
 if (!ret && !tty_port_initialized(&port->port))
  ret = -EIO;

 return ret;
}
