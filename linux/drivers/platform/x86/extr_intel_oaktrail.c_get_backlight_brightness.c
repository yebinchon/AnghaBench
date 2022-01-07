
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct backlight_device {int dummy; } ;


 int OT_EC_BL_BRIGHTNESS_ADDRESS ;
 int ec_read (int ,int*) ;

__attribute__((used)) static int get_backlight_brightness(struct backlight_device *b)
{
 u8 value;
 ec_read(OT_EC_BL_BRIGHTNESS_ADDRESS, &value);

 return value;
}
