
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpc18xx_pin_caps {int dummy; } ;
struct TYPE_3__ {unsigned int number; struct lpc18xx_pin_caps* drv_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* lpc18xx_pins ;

__attribute__((used)) static struct lpc18xx_pin_caps *lpc18xx_get_pin_caps(unsigned pin)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(lpc18xx_pins); i++) {
  if (lpc18xx_pins[i].number == pin)
   return lpc18xx_pins[i].drv_data;
 }

 return ((void*)0);
}
