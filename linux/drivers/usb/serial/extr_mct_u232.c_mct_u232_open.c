
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_serial_port {int bulk_out_size; TYPE_4__* interrupt_in_urb; int dev; TYPE_3__* read_urb; struct usb_serial* serial; } ;
struct usb_serial {TYPE_2__* dev; } ;
struct tty_struct {int dummy; } ;
struct mct_u232_private {int control_state; int last_lcr; unsigned char last_msr; TYPE_4__* read_urb; int lock; } ;
struct TYPE_9__ {int pipe; } ;
struct TYPE_8__ {int pipe; } ;
struct TYPE_6__ {int idProduct; } ;
struct TYPE_7__ {TYPE_1__ descriptor; } ;


 scalar_t__ C_BAUD (struct tty_struct*) ;
 int GFP_KERNEL ;
 int MCT_U232_DATA_BITS_8 ;
 int MCT_U232_PARITY_NONE ;
 scalar_t__ MCT_U232_SITECOM_PID ;
 int MCT_U232_STOP_BITS_1 ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int dev_err (int *,char*,int ,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mct_u232_get_modem_stat (struct usb_serial_port*,unsigned char*) ;
 int mct_u232_msr_to_state (struct usb_serial_port*,unsigned int*,unsigned char) ;
 int mct_u232_set_line_ctrl (struct usb_serial_port*,unsigned char) ;
 int mct_u232_set_modem_ctrl (struct usb_serial_port*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (TYPE_4__*) ;
 int usb_submit_urb (TYPE_4__*,int ) ;

__attribute__((used)) static int mct_u232_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct mct_u232_private *priv = usb_get_serial_port_data(port);
 int retval = 0;
 unsigned int control_state;
 unsigned long flags;
 unsigned char last_lcr;
 unsigned char last_msr;






 if (le16_to_cpu(serial->dev->descriptor.idProduct)
      == MCT_U232_SITECOM_PID)
  port->bulk_out_size = 16;






 spin_lock_irqsave(&priv->lock, flags);
 if (tty && C_BAUD(tty))
  priv->control_state = TIOCM_DTR | TIOCM_RTS;
 else
  priv->control_state = 0;

 priv->last_lcr = (MCT_U232_DATA_BITS_8 |
     MCT_U232_PARITY_NONE |
     MCT_U232_STOP_BITS_1);
 control_state = priv->control_state;
 last_lcr = priv->last_lcr;
 spin_unlock_irqrestore(&priv->lock, flags);
 mct_u232_set_modem_ctrl(port, control_state);
 mct_u232_set_line_ctrl(port, last_lcr);


 mct_u232_get_modem_stat(port, &last_msr);
 spin_lock_irqsave(&priv->lock, flags);
 priv->last_msr = last_msr;
 mct_u232_msr_to_state(port, &priv->control_state, priv->last_msr);
 spin_unlock_irqrestore(&priv->lock, flags);

 retval = usb_submit_urb(priv->read_urb, GFP_KERNEL);
 if (retval) {
  dev_err(&port->dev,
   "usb_submit_urb(read) failed pipe 0x%x err %d\n",
   port->read_urb->pipe, retval);
  goto error;
 }

 retval = usb_submit_urb(port->interrupt_in_urb, GFP_KERNEL);
 if (retval) {
  usb_kill_urb(priv->read_urb);
  dev_err(&port->dev,
   "usb_submit_urb(read int) failed pipe 0x%x err %d",
   port->interrupt_in_urb->pipe, retval);
  goto error;
 }
 return 0;

error:
 return retval;
}
