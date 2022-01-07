
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int asus_set_brightness (struct backlight_device*,int) ;

__attribute__((used)) static int update_bl_status(struct backlight_device *bd)
{
 int value = bd->props.brightness;

 return asus_set_brightness(bd, value);
}
