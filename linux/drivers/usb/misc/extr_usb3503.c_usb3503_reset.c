
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb3503 {int gpio_reset; int gpio_connect; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int usb3503_reset(struct usb3503 *hub, int state)
{
 if (!state && gpio_is_valid(hub->gpio_connect))
  gpio_set_value_cansleep(hub->gpio_connect, 0);

 if (gpio_is_valid(hub->gpio_reset))
  gpio_set_value_cansleep(hub->gpio_reset, state);


 if (state)
  usleep_range(4000, 10000);

 return 0;
}
