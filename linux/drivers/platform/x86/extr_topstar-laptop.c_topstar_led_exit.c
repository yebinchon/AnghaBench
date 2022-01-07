
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int led; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void topstar_led_exit(struct topstar_laptop *topstar)
{
 led_classdev_unregister(&topstar->led);
}
