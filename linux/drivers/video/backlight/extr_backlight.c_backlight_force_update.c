
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; } ;
struct backlight_device {int ops_lock; TYPE_2__* ops; TYPE_1__ props; } ;
typedef enum backlight_update_reason { ____Placeholder_backlight_update_reason } backlight_update_reason ;
struct TYPE_4__ {int (* get_brightness ) (struct backlight_device*) ;} ;


 int backlight_generate_event (struct backlight_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct backlight_device*) ;

void backlight_force_update(struct backlight_device *bd,
       enum backlight_update_reason reason)
{
 mutex_lock(&bd->ops_lock);
 if (bd->ops && bd->ops->get_brightness)
  bd->props.brightness = bd->ops->get_brightness(bd);
 mutex_unlock(&bd->ops_lock);
 backlight_generate_event(bd, reason);
}
