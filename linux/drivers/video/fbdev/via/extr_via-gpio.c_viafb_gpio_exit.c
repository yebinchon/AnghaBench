
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int via_gpio_driver ;

void viafb_gpio_exit(void)
{
 platform_driver_unregister(&via_gpio_driver);
}
