
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct usb_serial {int dummy; } ;


 int F81534_UART_OFFSET ;
 int f81534_set_register (struct usb_serial*,scalar_t__,int ) ;

__attribute__((used)) static int f81534_set_phy_port_register(struct usb_serial *serial, int phy,
     u16 reg, u8 data)
{
 return f81534_set_register(serial, reg + F81534_UART_OFFSET * phy,
     data);
}
