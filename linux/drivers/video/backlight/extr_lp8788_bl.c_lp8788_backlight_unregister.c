
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_bl {struct backlight_device* bl_dev; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;

__attribute__((used)) static void lp8788_backlight_unregister(struct lp8788_bl *bl)
{
 struct backlight_device *bl_dev = bl->bl_dev;

 backlight_device_unregister(bl_dev);
}
