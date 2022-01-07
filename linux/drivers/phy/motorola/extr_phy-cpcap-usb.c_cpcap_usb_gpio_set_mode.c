
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_phy_ddata {int * gpio; } ;
typedef enum cpcap_gpio_mode { ____Placeholder_cpcap_gpio_mode } cpcap_gpio_mode ;


 int gpiod_set_value (int ,int) ;

__attribute__((used)) static int cpcap_usb_gpio_set_mode(struct cpcap_phy_ddata *ddata,
       enum cpcap_gpio_mode mode)
{
 if (!ddata->gpio[0] || !ddata->gpio[1])
  return 0;

 gpiod_set_value(ddata->gpio[0], mode & 1);
 gpiod_set_value(ddata->gpio[1], mode >> 1);

 return 0;
}
