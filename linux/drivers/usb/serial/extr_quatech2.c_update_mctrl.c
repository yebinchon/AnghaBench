
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct qt2_port_private {int device_port; struct usb_serial_port* port; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int UART_MCR ;
 unsigned int UART_MCR_DTR ;
 unsigned int UART_MCR_RTS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int qt2_setregister (struct usb_device*,int ,int ,unsigned int) ;

__attribute__((used)) static inline int update_mctrl(struct qt2_port_private *port_priv,
          unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = port_priv->port;
 struct usb_device *dev = port->serial->dev;
 unsigned urb_value;
 int status;

 if (((set | clear) & (TIOCM_DTR | TIOCM_RTS)) == 0) {
  dev_dbg(&port->dev,
   "update_mctrl - DTR|RTS not being set|cleared\n");
  return 0;
 }

 clear &= ~set;
 urb_value = 0;
 if (set & TIOCM_DTR)
  urb_value |= UART_MCR_DTR;
 if (set & TIOCM_RTS)
  urb_value |= UART_MCR_RTS;

 status = qt2_setregister(dev, port_priv->device_port, UART_MCR,
     urb_value);
 if (status < 0)
  dev_err(&port->dev,
   "update_mctrl - Error from MODEM_CTRL urb: %i\n",
   status);
 return status;
}
