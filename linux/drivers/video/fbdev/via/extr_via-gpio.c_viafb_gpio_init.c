
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int via_gpio_driver ;

int viafb_gpio_init(void)
{
 return platform_driver_register(&via_gpio_driver);
}
