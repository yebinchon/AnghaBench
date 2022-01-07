
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssd1307fb_par {int pwm; TYPE_2__* device_info; int client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; int bl_dev; struct ssd1307fb_par* par; } ;
struct TYPE_4__ {scalar_t__ need_pwm; } ;


 int SSD1307FB_DISPLAY_OFF ;
 int __free_pages (int ,int ) ;
 int __va (int ) ;
 int backlight_device_unregister (int ) ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int framebuffer_release (struct fb_info*) ;
 int get_order (int ) ;
 struct fb_info* i2c_get_clientdata (struct i2c_client*) ;
 int pwm_disable (int ) ;
 int pwm_put (int ) ;
 int ssd1307fb_write_cmd (int ,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int ssd1307fb_remove(struct i2c_client *client)
{
 struct fb_info *info = i2c_get_clientdata(client);
 struct ssd1307fb_par *par = info->par;

 ssd1307fb_write_cmd(par->client, SSD1307FB_DISPLAY_OFF);

 backlight_device_unregister(info->bl_dev);

 unregister_framebuffer(info);
 if (par->device_info->need_pwm) {
  pwm_disable(par->pwm);
  pwm_put(par->pwm);
 }
 fb_deferred_io_cleanup(info);
 __free_pages(__va(info->fix.smem_start), get_order(info->fix.smem_len));
 framebuffer_release(info);

 return 0;
}
