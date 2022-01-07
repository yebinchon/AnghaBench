
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a21_wdt_drv {int * gpios; } ;


 size_t GPIO_WD_RST0 ;
 size_t GPIO_WD_RST1 ;
 size_t GPIO_WD_RST2 ;
 scalar_t__ gpiod_get_value (int ) ;

__attribute__((used)) static unsigned int a21_wdt_get_bootstatus(struct a21_wdt_drv *drv)
{
 int reset = 0;

 reset |= gpiod_get_value(drv->gpios[GPIO_WD_RST0]) ? (1 << 0) : 0;
 reset |= gpiod_get_value(drv->gpios[GPIO_WD_RST1]) ? (1 << 1) : 0;
 reset |= gpiod_get_value(drv->gpios[GPIO_WD_RST2]) ? (1 << 2) : 0;

 return reset;
}
