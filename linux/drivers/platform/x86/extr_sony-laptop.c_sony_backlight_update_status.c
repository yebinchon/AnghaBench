
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int sony_nc_acpi_handle ;
 int sony_nc_int_call (int ,char*,int*,int *) ;

__attribute__((used)) static int sony_backlight_update_status(struct backlight_device *bd)
{
 int arg = bd->props.brightness + 1;
 return sony_nc_int_call(sony_nc_acpi_handle, "SBRT", &arg, ((void*)0));
}
