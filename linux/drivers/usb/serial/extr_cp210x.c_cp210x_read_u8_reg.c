
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;


 int cp210x_read_reg_block (struct usb_serial_port*,int ,int *,int) ;

__attribute__((used)) static int cp210x_read_u8_reg(struct usb_serial_port *port, u8 req, u8 *val)
{
 return cp210x_read_reg_block(port, req, val, sizeof(*val));
}
