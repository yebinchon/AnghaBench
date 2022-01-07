
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EBUSY ;
 int EEEPC_ACPI_HID ;
 scalar_t__ acpi_dev_found (int ) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static int eeepc_wmi_probe(struct platform_device *pdev)
{
 if (acpi_dev_found(EEEPC_ACPI_HID)) {
  pr_warn("Found legacy ATKD device (%s)\n", EEEPC_ACPI_HID);
  pr_warn("WMI device present, but legacy ATKD device is also "
   "present and enabled\n");
  pr_warn("You probably booted with acpi_osi=\"Linux\" or "
   "acpi_osi=\"!Windows 2009\"\n");
  pr_warn("Can't load eeepc-wmi, use default acpi_osi "
   "(preferred) or eeepc-laptop\n");
  return -EBUSY;
 }
 return 0;
}
