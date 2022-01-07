
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_bl_data {int dummy; } ;
struct backlight_properties {int brightness; int fb_blank; int power; } ;
struct backlight_device {struct backlight_properties props; } ;


 struct tosa_bl_data* bl_get_data (struct backlight_device*) ;
 int max (int ,int ) ;
 int tosa_bl_set_backlight (struct tosa_bl_data*,int) ;

__attribute__((used)) static int tosa_bl_update_status(struct backlight_device *dev)
{
 struct backlight_properties *props = &dev->props;
 struct tosa_bl_data *data = bl_get_data(dev);
 int power = max(props->power, props->fb_blank);
 int brightness = props->brightness;

 if (power)
  brightness = 0;

 tosa_bl_set_backlight(data, brightness);

 return 0;
}
