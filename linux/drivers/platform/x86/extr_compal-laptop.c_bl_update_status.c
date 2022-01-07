
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power; int state; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int set_backlight_level (int ) ;
 int set_backlight_state (int) ;

__attribute__((used)) static int bl_update_status(struct backlight_device *b)
{
 int ret = set_backlight_level(b->props.brightness);
 if (ret)
  return ret;

 set_backlight_state((b->props.power == FB_BLANK_UNBLANK)
  && !(b->props.state & BL_CORE_SUSPENDED)
  && !(b->props.state & BL_CORE_FBBLANK));
 return 0;
}
