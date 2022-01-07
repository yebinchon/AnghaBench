
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct klsi_105_port_settings {int unknown2; int unknown1; int databits; int baudrate; int pktlen; } ;
struct TYPE_2__ {int dev; } ;


 int KL5KUSB105A_SIO_SET_DATA ;
 int KLSI_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*,int ,int ,int ,int ,int ) ;
 int dev_err (int *,char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,struct klsi_105_port_settings*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int klsi_105_chg_port_settings(struct usb_serial_port *port,
          struct klsi_105_port_settings *settings)
{
 int rc;

 rc = usb_control_msg(port->serial->dev,
   usb_sndctrlpipe(port->serial->dev, 0),
   KL5KUSB105A_SIO_SET_DATA,
   USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_INTERFACE,
   0,
   0,
   settings,
   sizeof(struct klsi_105_port_settings),
   KLSI_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev,
   "Change port settings failed (error = %d)\n", rc);

 dev_dbg(&port->dev,
  "pktlen %u, baudrate 0x%02x, databits %u, u1 %u, u2 %u\n",
  settings->pktlen, settings->baudrate, settings->databits,
  settings->unknown1, settings->unknown2);

 return rc;
}
