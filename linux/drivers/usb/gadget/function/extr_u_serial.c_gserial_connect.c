
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct gserial {TYPE_2__* in; int (* disconnect ) (struct gserial*) ;int (* connect ) (struct gserial*) ;int port_line_coding; struct gs_port* ioport; TYPE_2__* out; } ;
struct TYPE_5__ {scalar_t__ count; } ;
struct gs_port {int port_lock; int port_num; TYPE_1__ port; int port_line_coding; struct gserial* port_usb; } ;
struct TYPE_7__ {struct gs_port* port; } ;
struct TYPE_6__ {struct gs_port* driver_data; } ;


 int EBUSY ;
 int EINVAL ;
 int ENXIO ;
 size_t MAX_U_SERIAL_PORTS ;
 int gs_console_connect (size_t) ;
 int gs_start_io (struct gs_port*) ;
 TYPE_4__* ports ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct gserial*) ;
 int stub2 (struct gserial*) ;
 int usb_ep_disable (TYPE_2__*) ;
 int usb_ep_enable (TYPE_2__*) ;

int gserial_connect(struct gserial *gser, u8 port_num)
{
 struct gs_port *port;
 unsigned long flags;
 int status;

 if (port_num >= MAX_U_SERIAL_PORTS)
  return -ENXIO;

 port = ports[port_num].port;
 if (!port) {
  pr_err("serial line %d not allocated.\n", port_num);
  return -EINVAL;
 }
 if (port->port_usb) {
  pr_err("serial line %d is in use.\n", port_num);
  return -EBUSY;
 }


 status = usb_ep_enable(gser->in);
 if (status < 0)
  return status;
 gser->in->driver_data = port;

 status = usb_ep_enable(gser->out);
 if (status < 0)
  goto fail_out;
 gser->out->driver_data = port;


 spin_lock_irqsave(&port->port_lock, flags);
 gser->ioport = port;
 port->port_usb = gser;




 gser->port_line_coding = port->port_line_coding;






 if (port->port.count) {
  pr_debug("gserial_connect: start ttyGS%d\n", port->port_num);
  gs_start_io(port);
  if (gser->connect)
   gser->connect(gser);
 } else {
  if (gser->disconnect)
   gser->disconnect(gser);
 }

 status = gs_console_connect(port_num);
 spin_unlock_irqrestore(&port->port_lock, flags);

 return status;

fail_out:
 usb_ep_disable(gser->in);
 return status;
}
