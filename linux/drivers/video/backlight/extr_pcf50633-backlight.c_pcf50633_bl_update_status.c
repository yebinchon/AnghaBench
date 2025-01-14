
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf50633_bl {unsigned int brightness_limit; unsigned int brightness; int pcf; } ;
struct TYPE_2__ {int state; scalar_t__ power; unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int PCF50633_REG_LEDENA ;
 int PCF50633_REG_LEDOUT ;
 struct pcf50633_bl* bl_get_data (struct backlight_device*) ;
 int pcf50633_reg_write (int ,int ,int) ;

__attribute__((used)) static int pcf50633_bl_update_status(struct backlight_device *bl)
{
 struct pcf50633_bl *pcf_bl = bl_get_data(bl);
 unsigned int new_brightness;


 if (bl->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK) ||
  bl->props.power != FB_BLANK_UNBLANK)
  new_brightness = 0;
 else if (bl->props.brightness < pcf_bl->brightness_limit)
  new_brightness = bl->props.brightness;
 else
  new_brightness = pcf_bl->brightness_limit;


 if (pcf_bl->brightness == new_brightness)
  return 0;

 if (new_brightness) {
  pcf50633_reg_write(pcf_bl->pcf, PCF50633_REG_LEDOUT,
     new_brightness);
  if (!pcf_bl->brightness)
   pcf50633_reg_write(pcf_bl->pcf, PCF50633_REG_LEDENA, 1);
 } else {
  pcf50633_reg_write(pcf_bl->pcf, PCF50633_REG_LEDENA, 0);
 }

 pcf_bl->brightness = new_brightness;

 return 0;
}
