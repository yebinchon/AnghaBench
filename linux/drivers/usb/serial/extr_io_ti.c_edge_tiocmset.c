
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct edgeport_port {unsigned int shadow_mcr; int ep_lock; } ;


 unsigned int MCR_DTR ;
 unsigned int MCR_LOOPBACK ;
 unsigned int MCR_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int restore_mcr (struct edgeport_port*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct edgeport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int edge_tiocmset(struct tty_struct *tty,
     unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct edgeport_port *edge_port = usb_get_serial_port_data(port);
 unsigned int mcr;
 unsigned long flags;

 spin_lock_irqsave(&edge_port->ep_lock, flags);
 mcr = edge_port->shadow_mcr;
 if (set & TIOCM_RTS)
  mcr |= MCR_RTS;
 if (set & TIOCM_DTR)
  mcr |= MCR_DTR;
 if (set & TIOCM_LOOP)
  mcr |= MCR_LOOPBACK;

 if (clear & TIOCM_RTS)
  mcr &= ~MCR_RTS;
 if (clear & TIOCM_DTR)
  mcr &= ~MCR_DTR;
 if (clear & TIOCM_LOOP)
  mcr &= ~MCR_LOOPBACK;

 edge_port->shadow_mcr = mcr;
 spin_unlock_irqrestore(&edge_port->ep_lock, flags);

 restore_mcr(edge_port, mcr);
 return 0;
}
