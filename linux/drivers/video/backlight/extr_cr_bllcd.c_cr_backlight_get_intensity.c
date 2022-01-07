
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct backlight_device {int dummy; } ;


 int CRVML_BACKLIGHT_OFF ;
 int CRVML_PANEL_PORT ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int gpio_bar ;
 int inl (int) ;

__attribute__((used)) static int cr_backlight_get_intensity(struct backlight_device *bd)
{
 u32 addr = gpio_bar + CRVML_PANEL_PORT;
 u32 cur = inl(addr);
 u8 intensity;

 if (cur & CRVML_BACKLIGHT_OFF)
  intensity = FB_BLANK_POWERDOWN;
 else
  intensity = FB_BLANK_UNBLANK;

 return intensity;
}
