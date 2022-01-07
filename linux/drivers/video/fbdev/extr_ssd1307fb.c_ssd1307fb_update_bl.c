
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssd1307fb_par {int contrast; int client; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int SSD1307FB_CONTRAST ;
 struct ssd1307fb_par* bl_get_data (struct backlight_device*) ;
 int ssd1307fb_write_cmd (int ,int) ;

__attribute__((used)) static int ssd1307fb_update_bl(struct backlight_device *bdev)
{
 struct ssd1307fb_par *par = bl_get_data(bdev);
 int ret;
 int brightness = bdev->props.brightness;

 par->contrast = brightness;

 ret = ssd1307fb_write_cmd(par->client, SSD1307FB_CONTRAST);
 if (ret < 0)
  return ret;
 ret = ssd1307fb_write_cmd(par->client, par->contrast);
 if (ret < 0)
  return ret;
 return 0;
}
