
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65217_bl {int is_enabled; int dev; int tps; } ;
struct TYPE_2__ {int brightness; int state; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int TPS65217_PROTECT_NONE ;
 int TPS65217_REG_WLEDCTRL2 ;
 struct tps65217_bl* bl_get_data (struct backlight_device*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int tps65217_bl_disable (struct tps65217_bl*) ;
 int tps65217_bl_enable (struct tps65217_bl*) ;
 int tps65217_reg_write (int ,int ,int,int ) ;

__attribute__((used)) static int tps65217_bl_update_status(struct backlight_device *bl)
{
 struct tps65217_bl *tps65217_bl = bl_get_data(bl);
 int rc;
 int brightness = bl->props.brightness;

 if (bl->props.state & BL_CORE_SUSPENDED)
  brightness = 0;

 if ((bl->props.power != FB_BLANK_UNBLANK) ||
  (bl->props.fb_blank != FB_BLANK_UNBLANK))

  brightness = 0;

 if (brightness > 0) {
  rc = tps65217_reg_write(tps65217_bl->tps,
     TPS65217_REG_WLEDCTRL2,
     brightness - 1,
     TPS65217_PROTECT_NONE);
  if (rc) {
   dev_err(tps65217_bl->dev,
    "failed to set brightness level: %d\n", rc);
   return rc;
  }

  dev_dbg(tps65217_bl->dev, "brightness set to %d\n", brightness);

  if (!tps65217_bl->is_enabled)
   rc = tps65217_bl_enable(tps65217_bl);
 } else {
  rc = tps65217_bl_disable(tps65217_bl);
 }

 return rc;
}
