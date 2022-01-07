
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int EINVAL ;
 int OT_EC_BL_BRIGHTNESS_ADDRESS ;
 scalar_t__ OT_EC_BL_BRIGHTNESS_MAX ;
 int OT_EC_BL_CONTROL_ADDRESS ;
 scalar_t__ OT_EC_BL_CONTROL_ON_DATA ;
 int ec_write (int ,scalar_t__) ;

__attribute__((used)) static int set_backlight_brightness(struct backlight_device *b)
{
 u8 percent = (u8) b->props.brightness;
 if (percent < 0 || percent > OT_EC_BL_BRIGHTNESS_MAX)
  return -EINVAL;

 ec_write(OT_EC_BL_BRIGHTNESS_ADDRESS, percent);
 ec_write(OT_EC_BL_CONTROL_ADDRESS, OT_EC_BL_CONTROL_ON_DATA);

 return 0;
}
