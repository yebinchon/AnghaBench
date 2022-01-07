
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_1__* serial; } ;
struct TYPE_2__ {int dev; } ;


 int KL5KUSB105A_SIO_CONFIGURE ;
 int KL5KUSB105A_SIO_CONFIGURE_READ_OFF ;
 int KLSI_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void klsi_105_close(struct usb_serial_port *port)
{
 int rc;


 rc = usb_control_msg(port->serial->dev,
        usb_sndctrlpipe(port->serial->dev, 0),
        KL5KUSB105A_SIO_CONFIGURE,
        USB_TYPE_VENDOR | USB_DIR_OUT,
        KL5KUSB105A_SIO_CONFIGURE_READ_OFF,
        0,
        ((void*)0), 0,
        KLSI_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev, "failed to disable read: %d\n", rc);


 usb_serial_generic_close(port);
}
