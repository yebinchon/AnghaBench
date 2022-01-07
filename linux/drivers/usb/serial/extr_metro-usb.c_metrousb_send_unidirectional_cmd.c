
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {int interrupt_out_endpointAddress; TYPE_1__* serial; } ;
typedef int cmd ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int metrousb_is_unidirectional_mode (TYPE_1__*) ;
 int usb_interrupt_msg (int ,int ,int *,int,int*,int ) ;
 int usb_sndintpipe (int ,int ) ;

__attribute__((used)) static int metrousb_send_unidirectional_cmd(u8 cmd, struct usb_serial_port *port)
{
 int ret;
 int actual_len;
 u8 *buffer_cmd = ((void*)0);

 if (!metrousb_is_unidirectional_mode(port->serial))
  return 0;

 buffer_cmd = kzalloc(sizeof(cmd), GFP_KERNEL);
 if (!buffer_cmd)
  return -ENOMEM;

 *buffer_cmd = cmd;

 ret = usb_interrupt_msg(port->serial->dev,
  usb_sndintpipe(port->serial->dev, port->interrupt_out_endpointAddress),
  buffer_cmd, sizeof(cmd),
  &actual_len, USB_CTRL_SET_TIMEOUT);

 kfree(buffer_cmd);

 if (ret < 0)
  return ret;
 else if (actual_len != sizeof(cmd))
  return -EIO;
 return 0;
}
