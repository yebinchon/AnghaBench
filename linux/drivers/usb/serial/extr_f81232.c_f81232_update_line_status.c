
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct f81232_private {int interrupt_work; } ;


 int dev_dbg (int *,char*,unsigned char) ;
 int schedule_work (int *) ;
 struct f81232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void f81232_update_line_status(struct usb_serial_port *port,
          unsigned char *data,
          size_t actual_length)
{
 struct f81232_private *priv = usb_get_serial_port_data(port);

 if (!actual_length)
  return;

 switch (data[0] & 0x07) {
 case 0x00:
  dev_dbg(&port->dev, "IIR: MSR Change: %02x\n", data[0]);
  schedule_work(&priv->interrupt_work);
  break;
 case 0x02:
  break;
 case 0x04:
  break;
 case 0x06:

  dev_dbg(&port->dev, "IIR: LSR Change: %02x\n", data[0]);
  break;
 }
}
