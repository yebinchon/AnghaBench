
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ debug ;
 int nvidia_chipset_set_brightness (int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int nvidia_chipset_send_intensity(struct backlight_device *bd)
{
 int intensity = bd->props.brightness;

 if (debug)
  pr_debug("setting brightness to %d\n", intensity);

 nvidia_chipset_set_brightness(intensity);
 return 0;
}
