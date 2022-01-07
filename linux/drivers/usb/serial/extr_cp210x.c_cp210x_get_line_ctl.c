
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_serial_port {int dummy; } ;
struct cp210x_port_private {scalar_t__ has_swapped_line_ctl; } ;


 int CP210X_GET_LINE_CTL ;
 int cp210x_read_u16_reg (struct usb_serial_port*,int ,int *) ;
 int swab16 (int ) ;
 struct cp210x_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int cp210x_get_line_ctl(struct usb_serial_port *port, u16 *ctl)
{
 struct cp210x_port_private *port_priv = usb_get_serial_port_data(port);
 int err;

 err = cp210x_read_u16_reg(port, CP210X_GET_LINE_CTL, ctl);
 if (err)
  return err;


 if (port_priv->has_swapped_line_ctl)
  *ctl = swab16(*ctl);

 return 0;
}
