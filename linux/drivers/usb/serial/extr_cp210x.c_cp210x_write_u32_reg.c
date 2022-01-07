
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_serial_port {int dummy; } ;
typedef int le32_val ;
typedef int __le32 ;


 int cp210x_write_reg_block (struct usb_serial_port*,int ,int *,int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static int cp210x_write_u32_reg(struct usb_serial_port *port, u8 req, u32 val)
{
 __le32 le32_val;

 le32_val = cpu_to_le32(val);

 return cp210x_write_reg_block(port, req, &le32_val, sizeof(le32_val));
}
