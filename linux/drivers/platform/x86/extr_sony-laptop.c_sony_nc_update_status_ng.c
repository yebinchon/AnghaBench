
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sony_backlight_props {int offset; int cmd_base; int handle; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int EIO ;
 scalar_t__ bl_get_data (struct backlight_device*) ;
 scalar_t__ sony_call_snc_handle (int ,int,int*) ;

__attribute__((used)) static int sony_nc_update_status_ng(struct backlight_device *bd)
{
 int value, result;
 struct sony_backlight_props *sdev =
  (struct sony_backlight_props *)bl_get_data(bd);

 value = bd->props.brightness + sdev->offset;
 if (sony_call_snc_handle(sdev->handle, sdev->cmd_base | (value << 0x10),
    &result))
  return -EIO;

 return value;
}
