
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* read_urb; TYPE_1__* serial; } ;
struct tty_struct {int dummy; } ;
struct opticon_private {int rts; int lock; } ;
struct TYPE_4__ {int pipe; } ;
struct TYPE_3__ {int dev; } ;


 int CONTROL_RTS ;
 int RESEND_CTS_STATE ;
 int send_control_msg (struct usb_serial_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_clear_halt (int ,int ) ;
 struct opticon_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;

__attribute__((used)) static int opticon_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct opticon_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 int res;

 spin_lock_irqsave(&priv->lock, flags);
 priv->rts = 0;
 spin_unlock_irqrestore(&priv->lock, flags);


 send_control_msg(port, CONTROL_RTS, 0);


 usb_clear_halt(port->serial->dev, port->read_urb->pipe);

 res = usb_serial_generic_open(tty, port);
 if (res)
  return res;



 send_control_msg(port, RESEND_CTS_STATE, 1);

 return res;
}
