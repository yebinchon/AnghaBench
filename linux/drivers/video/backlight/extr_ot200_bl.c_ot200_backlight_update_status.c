
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ot200_backlight_data {int current_brightness; } ;
struct TYPE_2__ {int brightness; int state; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 scalar_t__ MAX_COMP2 ;
 int MFGPT_REG_CMP1 ;
 int MFGPT_REG_COUNTER ;
 int MFGPT_REG_SETUP ;
 scalar_t__ MFGPT_SETUP_CNTEN ;
 struct ot200_backlight_data* bl_get_data (struct backlight_device*) ;
 int cs5535_mfgpt_write (int ,int ,scalar_t__) ;
 scalar_t__* dim_table ;
 int pwm_timer ;

__attribute__((used)) static int ot200_backlight_update_status(struct backlight_device *bl)
{
 struct ot200_backlight_data *data = bl_get_data(bl);
 int brightness = bl->props.brightness;

 if (bl->props.state & BL_CORE_FBBLANK)
  brightness = 0;


 if (brightness == 0)
  cs5535_mfgpt_write(pwm_timer, MFGPT_REG_SETUP, 0);
 else if (data->current_brightness == 0) {
  cs5535_mfgpt_write(pwm_timer, MFGPT_REG_COUNTER, 0);
  cs5535_mfgpt_write(pwm_timer, MFGPT_REG_SETUP,
   MFGPT_SETUP_CNTEN);
 }


 cs5535_mfgpt_write(pwm_timer, MFGPT_REG_CMP1,
  MAX_COMP2 - dim_table[brightness]);
 data->current_brightness = brightness;

 return 0;
}
