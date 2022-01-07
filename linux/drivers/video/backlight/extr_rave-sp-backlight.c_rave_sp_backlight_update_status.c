
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rave_sp {int dummy; } ;
struct backlight_properties {scalar_t__ power; int brightness; } ;
struct backlight_device {int dev; struct backlight_properties props; } ;
typedef int cmd ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int const RAVE_SP_BACKLIGHT_LCD_EN ;
 int RAVE_SP_CMD_SET_BACKLIGHT ;
 struct rave_sp* dev_get_drvdata (int *) ;
 int rave_sp_exec (struct rave_sp*,int*,int,int *,int ) ;

__attribute__((used)) static int rave_sp_backlight_update_status(struct backlight_device *bd)
{
 const struct backlight_properties *p = &bd->props;
 const u8 intensity =
  (p->power == FB_BLANK_UNBLANK) ? p->brightness : 0;
 struct rave_sp *sp = dev_get_drvdata(&bd->dev);
 u8 cmd[] = {
  [0] = RAVE_SP_CMD_SET_BACKLIGHT,
  [1] = 0,
  [2] = intensity ? RAVE_SP_BACKLIGHT_LCD_EN | intensity : 0,
  [3] = 0,
  [4] = 0,
 };

 return rave_sp_exec(sp, cmd, sizeof(cmd), ((void*)0), 0);
}
