
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_usbh_data {int * vbus_pin; } ;


 int gpiod_set_value (int ,int) ;
 int valid_port (int) ;

__attribute__((used)) static void ohci_at91_usb_set_power(struct at91_usbh_data *pdata, int port, int enable)
{
 if (!valid_port(port))
  return;

 gpiod_set_value(pdata->vbus_pin[port], enable);
}
