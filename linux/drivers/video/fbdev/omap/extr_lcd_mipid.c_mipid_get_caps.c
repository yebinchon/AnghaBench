
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 unsigned long OMAPFB_CAPS_SET_BACKLIGHT ;

__attribute__((used)) static unsigned long mipid_get_caps(struct lcd_panel *panel)
{
 return OMAPFB_CAPS_SET_BACKLIGHT;
}
