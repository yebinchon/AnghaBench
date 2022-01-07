
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct backlight_device {int dummy; } ;


 int ACER_CAP_BRIGHTNESS ;
 int get_u32 (int*,int ) ;

__attribute__((used)) static int read_brightness(struct backlight_device *bd)
{
 u32 value;
 get_u32(&value, ACER_CAP_BRIGHTNESS);
 return value;
}
