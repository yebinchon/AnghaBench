
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_usbh_data {int * vbus_pin; } ;


 int EINVAL ;
 int gpiod_get_value (int ) ;
 int valid_port (int) ;

__attribute__((used)) static int ohci_at91_usb_get_power(struct at91_usbh_data *pdata, int port)
{
 if (!valid_port(port))
  return -EINVAL;

 return gpiod_get_value(pdata->vbus_pin[port]);
}
