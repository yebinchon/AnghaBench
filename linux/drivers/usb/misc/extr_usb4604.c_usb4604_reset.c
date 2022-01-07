
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb4604 {int gpio_reset; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void usb4604_reset(struct usb4604 *hub, int state)
{
 gpiod_set_value_cansleep(hub->gpio_reset, state);


 if (state)
  msleep(250);
}
