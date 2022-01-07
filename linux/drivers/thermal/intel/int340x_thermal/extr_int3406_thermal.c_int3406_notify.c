
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_handle ;


 scalar_t__ INT3406_BRIGHTNESS_LIMITS_CHANGED ;
 int int3406_thermal_get_limit (void*) ;

__attribute__((used)) static void int3406_notify(acpi_handle handle, u32 event, void *data)
{
 if (event == INT3406_BRIGHTNESS_LIMITS_CHANGED)
  int3406_thermal_get_limit(data);
}
