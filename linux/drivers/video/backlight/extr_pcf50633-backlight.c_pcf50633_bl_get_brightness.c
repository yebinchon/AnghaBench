
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_bl {int brightness; } ;
struct backlight_device {int dummy; } ;


 struct pcf50633_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int pcf50633_bl_get_brightness(struct backlight_device *bl)
{
 struct pcf50633_bl *pcf_bl = bl_get_data(bl);

 return pcf_bl->brightness;
}
