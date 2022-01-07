
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gserial {int in; int out; struct gs_port* ioport; int port_line_coding; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ tty; } ;
struct gs_port {int port_lock; scalar_t__ write_started; scalar_t__ write_allocated; scalar_t__ read_started; scalar_t__ read_allocated; int write_pool; int read_queue; int read_pool; int port_write_buf; scalar_t__ openclose; TYPE_1__ port; int drain_wait; int * port_usb; int port_line_coding; } ;


 int gs_console_disconnect (int ) ;
 int gs_free_requests (int ,int *,int *) ;
 int kfifo_free (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_hangup (scalar_t__) ;
 int usb_ep_disable (int ) ;
 int wake_up_interruptible (int *) ;

void gserial_disconnect(struct gserial *gser)
{
 struct gs_port *port = gser->ioport;
 unsigned long flags;

 if (!port)
  return;


 spin_lock_irqsave(&port->port_lock, flags);


 port->port_line_coding = gser->port_line_coding;

 port->port_usb = ((void*)0);
 gser->ioport = ((void*)0);
 if (port->port.count > 0 || port->openclose) {
  wake_up_interruptible(&port->drain_wait);
  if (port->port.tty)
   tty_hangup(port->port.tty);
 }
 spin_unlock_irqrestore(&port->port_lock, flags);


 usb_ep_disable(gser->out);
 usb_ep_disable(gser->in);


 spin_lock_irqsave(&port->port_lock, flags);
 if (port->port.count == 0 && !port->openclose)
  kfifo_free(&port->port_write_buf);
 gs_free_requests(gser->out, &port->read_pool, ((void*)0));
 gs_free_requests(gser->out, &port->read_queue, ((void*)0));
 gs_free_requests(gser->in, &port->write_pool, ((void*)0));

 port->read_allocated = port->read_started =
  port->write_allocated = port->write_started = 0;

 gs_console_disconnect(gser->in);
 spin_unlock_irqrestore(&port->port_lock, flags);
}
