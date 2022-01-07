
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xxbl {int brightness; int mmio; } ;
struct backlight_device {int dummy; } ;


 int EP93XX_MAX_COUNT ;
 struct ep93xxbl* bl_get_data (struct backlight_device*) ;
 int writel (int,int ) ;

__attribute__((used)) static int ep93xxbl_set(struct backlight_device *bl, int brightness)
{
 struct ep93xxbl *ep93xxbl = bl_get_data(bl);

 writel((brightness << 8) | EP93XX_MAX_COUNT, ep93xxbl->mmio);

 ep93xxbl->brightness = brightness;

 return 0;
}
