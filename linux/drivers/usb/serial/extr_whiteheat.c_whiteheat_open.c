
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_serial_port {TYPE_3__* serial; TYPE_2__* write_urb; TYPE_1__* read_urb; } ;
struct tty_struct {int dummy; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int pipe; } ;
struct TYPE_5__ {int pipe; } ;


 int WHITEHEAT_PURGE_RX ;
 int WHITEHEAT_PURGE_TX ;
 int firm_close (struct usb_serial_port*) ;
 int firm_open (struct usb_serial_port*) ;
 int firm_purge (struct usb_serial_port*,int) ;
 int firm_setup_port (struct tty_struct*) ;
 int start_command_port (TYPE_3__*) ;
 int stop_command_port (TYPE_3__*) ;
 int usb_clear_halt (int ,int ) ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;

__attribute__((used)) static int whiteheat_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 int retval;

 retval = start_command_port(port->serial);
 if (retval)
  goto exit;


 retval = firm_open(port);
 if (retval) {
  stop_command_port(port->serial);
  goto exit;
 }

 retval = firm_purge(port, WHITEHEAT_PURGE_RX | WHITEHEAT_PURGE_TX);
 if (retval) {
  firm_close(port);
  stop_command_port(port->serial);
  goto exit;
 }

 if (tty)
  firm_setup_port(tty);


 usb_clear_halt(port->serial->dev, port->read_urb->pipe);
 usb_clear_halt(port->serial->dev, port->write_urb->pipe);

 retval = usb_serial_generic_open(tty, port);
 if (retval) {
  firm_close(port);
  stop_command_port(port->serial);
  goto exit;
 }
exit:
 return retval;
}
