
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;
struct usb_serial_port {int lock; struct async_icount icount; int port; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 unsigned long TIOCM_CD ;
 unsigned long TIOCM_CTS ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RNG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_initialized (int *) ;

__attribute__((used)) static bool usb_serial_generic_msr_changed(struct tty_struct *tty,
    unsigned long arg, struct async_icount *cprev)
{
 struct usb_serial_port *port = tty->driver_data;
 struct async_icount cnow;
 unsigned long flags;
 bool ret;





 if (!tty_port_initialized(&port->port))
  return 1;

 spin_lock_irqsave(&port->lock, flags);
 cnow = port->icount;
 spin_unlock_irqrestore(&port->lock, flags);

 ret = ((arg & TIOCM_RNG) && (cnow.rng != cprev->rng)) ||
  ((arg & TIOCM_DSR) && (cnow.dsr != cprev->dsr)) ||
  ((arg & TIOCM_CD) && (cnow.dcd != cprev->dcd)) ||
  ((arg & TIOCM_CTS) && (cnow.cts != cprev->cts));

 *cprev = cnow;

 return ret;
}
