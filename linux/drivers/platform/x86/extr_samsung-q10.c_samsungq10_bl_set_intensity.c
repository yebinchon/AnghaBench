
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int SAMSUNGQ10_BL_MAX_INTENSITY ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int ec_handle ;

__attribute__((used)) static int samsungq10_bl_set_intensity(struct backlight_device *bd)
{

 acpi_status status;
 int i;

 for (i = 0; i < SAMSUNGQ10_BL_MAX_INTENSITY; i++) {
  status = acpi_evaluate_object(ec_handle, "_Q63", ((void*)0), ((void*)0));
  if (ACPI_FAILURE(status))
   return -EIO;
 }
 for (i = 0; i < bd->props.brightness; i++) {
  status = acpi_evaluate_object(ec_handle, "_Q64", ((void*)0), ((void*)0));
  if (ACPI_FAILURE(status))
   return -EIO;
 }

 return 0;
}
