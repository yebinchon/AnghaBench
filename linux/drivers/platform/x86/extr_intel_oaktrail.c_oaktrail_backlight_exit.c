
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_device_unregister (int ) ;
 int oaktrail_bl_device ;

__attribute__((used)) static void oaktrail_backlight_exit(void)
{
 backlight_device_unregister(oaktrail_bl_device);
}
