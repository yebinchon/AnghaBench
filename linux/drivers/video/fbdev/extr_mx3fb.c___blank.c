
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mx3fb_info {int blank; struct mx3fb_data* mx3fb; } ;
struct mx3fb_data {int backlight_level; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ screen_base; struct mx3fb_info* par; } ;







 int memset (char*,int ,int ) ;
 int msleep (int) ;
 int sdc_disable_channel (struct mx3fb_info*) ;
 int sdc_enable_channel (struct mx3fb_info*) ;
 int sdc_set_brightness (struct mx3fb_data*,int ) ;

__attribute__((used)) static void __blank(int blank, struct fb_info *fbi)
{
 struct mx3fb_info *mx3_fbi = fbi->par;
 struct mx3fb_data *mx3fb = mx3_fbi->mx3fb;
 int was_blank = mx3_fbi->blank;

 mx3_fbi->blank = blank;







 if (blank > 129 && was_blank > 129)
  return;

 switch (blank) {
 case 130:
 case 128:
 case 132:
 case 131:
  sdc_set_brightness(mx3fb, 0);
  memset((char *)fbi->screen_base, 0, fbi->fix.smem_len);

  msleep(25);
  sdc_disable_channel(mx3_fbi);
  break;
 case 129:
  sdc_enable_channel(mx3_fbi);
  sdc_set_brightness(mx3fb, mx3fb->backlight_level);
  break;
 }
}
