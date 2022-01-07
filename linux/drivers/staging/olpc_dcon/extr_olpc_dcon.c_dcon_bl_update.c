
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dcon_priv {scalar_t__ bl_val; int ignore_fb_events; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; int state; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 scalar_t__ FB_BLANK_UNBLANK ;
 struct dcon_priv* bl_get_data (struct backlight_device*) ;
 int dcon_set_backlight (struct dcon_priv*,scalar_t__) ;
 int dcon_sleep (struct dcon_priv*,int) ;

__attribute__((used)) static int dcon_bl_update(struct backlight_device *dev)
{
 struct dcon_priv *dcon = bl_get_data(dev);
 u8 level = dev->props.brightness & 0x0F;

 if (dev->props.power != FB_BLANK_UNBLANK)
  level = 0;

 if (level != dcon->bl_val)
  dcon_set_backlight(dcon, level);


 if (!dcon->ignore_fb_events)
  dcon_sleep(dcon, !!(dev->props.state & BL_CORE_FBBLANK));

 return 0;
}
