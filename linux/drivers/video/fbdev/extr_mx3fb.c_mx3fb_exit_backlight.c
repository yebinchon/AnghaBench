
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx3fb_data {int bl; } ;


 int backlight_device_unregister (int ) ;

__attribute__((used)) static void mx3fb_exit_backlight(struct mx3fb_data *fbd)
{
 backlight_device_unregister(fbd->bl);
}
