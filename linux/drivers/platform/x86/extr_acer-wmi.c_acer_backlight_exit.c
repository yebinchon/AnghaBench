
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acer_backlight_device ;
 int backlight_device_unregister (int ) ;

__attribute__((used)) static void acer_backlight_exit(void)
{
 backlight_device_unregister(acer_backlight_device);
}
