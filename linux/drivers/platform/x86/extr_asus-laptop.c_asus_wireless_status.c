
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int wireless_status; int handle; int have_rsts; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int EINVAL ;
 int METHOD_WL_STATUS ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int asus_wireless_status(struct asus_laptop *asus, int mask)
{
 unsigned long long status;
 acpi_status rv = AE_OK;

 if (!asus->have_rsts)
  return (asus->wireless_status & mask) ? 1 : 0;

 rv = acpi_evaluate_integer(asus->handle, METHOD_WL_STATUS,
       ((void*)0), &status);
 if (ACPI_FAILURE(rv)) {
  pr_warn("Error reading Wireless status\n");
  return -EINVAL;
 }
 return !!(status & mask);
}
