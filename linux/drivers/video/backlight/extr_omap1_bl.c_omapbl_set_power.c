
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_backlight {int powermode; } ;
struct backlight_device {int dummy; } ;


 struct omap_backlight* bl_get_data (struct backlight_device*) ;
 int omapbl_blank (struct omap_backlight*,int) ;

__attribute__((used)) static int omapbl_set_power(struct backlight_device *dev, int state)
{
 struct omap_backlight *bl = bl_get_data(dev);

 omapbl_blank(bl, state);
 bl->powermode = state;

 return 0;
}
