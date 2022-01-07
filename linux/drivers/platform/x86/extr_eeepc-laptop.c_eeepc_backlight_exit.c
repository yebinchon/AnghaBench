
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int * backlight_device; } ;


 int backlight_device_unregister (int *) ;

__attribute__((used)) static void eeepc_backlight_exit(struct eeepc_laptop *eeepc)
{
 backlight_device_unregister(eeepc->backlight_device);
 eeepc->backlight_device = ((void*)0);
}
