
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fb_blank; scalar_t__ power; unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int TPACPI_DBG_BRGHT ;
 int brightness_set (unsigned int) ;
 int dbg_printk (int ,char*,unsigned int) ;

__attribute__((used)) static int brightness_update_status(struct backlight_device *bd)
{
 unsigned int level =
  (bd->props.fb_blank == FB_BLANK_UNBLANK &&
   bd->props.power == FB_BLANK_UNBLANK) ?
    bd->props.brightness : 0;

 dbg_printk(TPACPI_DBG_BRGHT,
   "backlight: attempt to set level to %d\n",
   level);



 return brightness_set(level);
}
