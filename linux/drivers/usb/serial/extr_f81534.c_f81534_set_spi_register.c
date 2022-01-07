
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_serial {int dummy; } ;


 int f81534_set_register (struct usb_serial*,int ,int ) ;
 int f81534_wait_for_spi_idle (struct usb_serial*) ;

__attribute__((used)) static int f81534_set_spi_register(struct usb_serial *serial, u16 reg, u8 data)
{
 int status;

 status = f81534_set_register(serial, reg, data);
 if (status)
  return status;

 return f81534_wait_for_spi_idle(serial);
}
