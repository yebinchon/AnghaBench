
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm3533_bl {int cb; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 struct lm3533_bl* bl_get_data (struct backlight_device*) ;
 int lm3533_ctrlbank_set_brightness (int *,int ) ;

__attribute__((used)) static int lm3533_bl_update_status(struct backlight_device *bd)
{
 struct lm3533_bl *bl = bl_get_data(bd);
 int brightness = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  brightness = 0;
 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  brightness = 0;

 return lm3533_ctrlbank_set_brightness(&bl->cb, (u8)brightness);
}
