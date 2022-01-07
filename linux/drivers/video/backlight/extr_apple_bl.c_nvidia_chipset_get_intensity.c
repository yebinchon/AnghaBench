
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 scalar_t__ debug ;
 int inb (int) ;
 int outb (int,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int nvidia_chipset_get_intensity(struct backlight_device *bd)
{
 int intensity;

 outb(0x03, 0x52f);
 outb(0xbf, 0x52e);
 intensity = inb(0x52f) >> 4;

 if (debug)
  pr_debug("read brightness of %d\n", intensity);

 return intensity;
}
