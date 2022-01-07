
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int METHOD_GPS_STATUS ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int asus_gps_status(struct asus_laptop *asus)
{
 unsigned long long status;
 acpi_status rv;

 rv = acpi_evaluate_integer(asus->handle, METHOD_GPS_STATUS,
       ((void*)0), &status);
 if (ACPI_FAILURE(rv)) {
  pr_warn("Error reading GPS status\n");
  return -ENODEV;
 }
 return !!status;
}
