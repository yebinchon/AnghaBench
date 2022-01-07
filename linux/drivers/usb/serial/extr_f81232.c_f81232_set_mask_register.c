
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_serial_port {int dummy; } ;


 int f81232_get_register (struct usb_serial_port*,int ,int*) ;
 int f81232_set_register (struct usb_serial_port*,int ,int) ;

__attribute__((used)) static int f81232_set_mask_register(struct usb_serial_port *port, u16 reg,
     u8 mask, u8 val)
{
 int status;
 u8 tmp;

 status = f81232_get_register(port, reg, &tmp);
 if (status)
  return status;

 tmp = (tmp & ~mask) | (val & mask);

 return f81232_set_register(port, reg, tmp);
}
