
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct ftdi_private {int interface; } ;
struct TYPE_2__ {int dev; } ;


 int FTDI_SIO_SET_FLOW_CTRL_REQUEST ;
 int FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int WDR_TIMEOUT ;
 int clear_mctrl (struct usb_serial_port*,int) ;
 int dev_err (int *,char*) ;
 int set_mctrl (struct usb_serial_port*,int) ;
 scalar_t__ usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int ,int ) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void ftdi_dtr_rts(struct usb_serial_port *port, int on)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);


 if (!on) {
  if (usb_control_msg(port->serial->dev,
       usb_sndctrlpipe(port->serial->dev, 0),
       FTDI_SIO_SET_FLOW_CTRL_REQUEST,
       FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE,
       0, priv->interface, ((void*)0), 0,
       WDR_TIMEOUT) < 0) {
   dev_err(&port->dev, "error from flowcontrol urb\n");
  }
 }

 if (on)
  set_mctrl(port, TIOCM_DTR | TIOCM_RTS);
 else
  clear_mctrl(port, TIOCM_DTR | TIOCM_RTS);
}
