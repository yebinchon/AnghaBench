
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_serial_port {int dummy; } ;
typedef int le16_val ;
typedef int __le16 ;


 int cp210x_read_reg_block (struct usb_serial_port*,int ,int *,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int cp210x_read_u16_reg(struct usb_serial_port *port, u8 req, u16 *val)
{
 __le16 le16_val;
 int err;

 err = cp210x_read_reg_block(port, req, &le16_val, sizeof(le16_val));
 if (err)
  return err;

 *val = le16_to_cpu(le16_val);

 return 0;
}
