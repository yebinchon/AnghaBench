
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long max_brightness; unsigned long brightness; } ;
struct backlight_device {int ops_lock; TYPE_1__ props; scalar_t__ ops; } ;


 int BACKLIGHT_UPDATE_SYSFS ;
 int EINVAL ;
 int ENXIO ;
 int backlight_generate_event (struct backlight_device*,int ) ;
 int backlight_update_status (struct backlight_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,unsigned long) ;

int backlight_device_set_brightness(struct backlight_device *bd,
        unsigned long brightness)
{
 int rc = -ENXIO;

 mutex_lock(&bd->ops_lock);
 if (bd->ops) {
  if (brightness > bd->props.max_brightness)
   rc = -EINVAL;
  else {
   pr_debug("set brightness to %lu\n", brightness);
   bd->props.brightness = brightness;
   rc = backlight_update_status(bd);
  }
 }
 mutex_unlock(&bd->ops_lock);

 backlight_generate_event(bd, BACKLIGHT_UPDATE_SYSFS);

 return rc;
}
