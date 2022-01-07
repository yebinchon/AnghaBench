
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int led_classdev_register (struct device*,int *) ;
 int mail_led ;

__attribute__((used)) static int acer_led_init(struct device *dev)
{
 return led_classdev_register(dev, &mail_led);
}
