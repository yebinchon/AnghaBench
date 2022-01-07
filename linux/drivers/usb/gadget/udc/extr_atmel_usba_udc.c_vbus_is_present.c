
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {scalar_t__ vbus_pin; } ;


 int gpiod_get_value (scalar_t__) ;

__attribute__((used)) static int vbus_is_present(struct usba_udc *udc)
{
 if (udc->vbus_pin)
  return gpiod_get_value(udc->vbus_pin);


 return 1;
}
