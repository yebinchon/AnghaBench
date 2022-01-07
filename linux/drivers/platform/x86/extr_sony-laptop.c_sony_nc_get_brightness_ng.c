
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_backlight_props {int offset; scalar_t__ cmd_base; int handle; } ;
struct backlight_device {int dummy; } ;


 scalar_t__ bl_get_data (struct backlight_device*) ;
 int sony_call_snc_handle (int ,scalar_t__,int*) ;

__attribute__((used)) static int sony_nc_get_brightness_ng(struct backlight_device *bd)
{
 int result;
 struct sony_backlight_props *sdev =
  (struct sony_backlight_props *)bl_get_data(bd);

 sony_call_snc_handle(sdev->handle, sdev->cmd_base + 0x100, &result);

 return (result & 0xff) - sdev->offset;
}
