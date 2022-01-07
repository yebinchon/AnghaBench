
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * backlight_map ;
 int msi_wmi_set_block (int ,int ) ;

__attribute__((used)) static int bl_set_status(struct backlight_device *bd)
{
 int bright = bd->props.brightness;
 if (bright >= ARRAY_SIZE(backlight_map) || bright < 0)
  return -EINVAL;


 return msi_wmi_set_block(0, backlight_map[bright]);
}
