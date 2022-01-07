
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
struct backlight_device {int dummy; } ;


 int CM_ASL_PANELBRIGHT ;
 struct eeepc_laptop* bl_get_data (struct backlight_device*) ;
 int get_acpi (struct eeepc_laptop*,int ) ;

__attribute__((used)) static int read_brightness(struct backlight_device *bd)
{
 struct eeepc_laptop *eeepc = bl_get_data(bd);

 return get_acpi(eeepc, CM_ASL_PANELBRIGHT);
}
