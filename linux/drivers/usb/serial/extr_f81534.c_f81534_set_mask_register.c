
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_serial {int dummy; } ;


 int f81534_get_register (struct usb_serial*,int ,int*) ;
 int f81534_set_register (struct usb_serial*,int ,int) ;

__attribute__((used)) static int f81534_set_mask_register(struct usb_serial *serial, u16 reg,
     u8 mask, u8 data)
{
 int status;
 u8 tmp;

 status = f81534_get_register(serial, reg, &tmp);
 if (status)
  return status;

 tmp &= ~mask;
 tmp |= (mask & data);

 return f81534_set_register(serial, reg, tmp);
}
