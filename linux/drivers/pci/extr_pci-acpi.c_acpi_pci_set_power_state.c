
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;
struct acpi_device {int handle; } ;
typedef int pci_power_t ;


 struct acpi_device* ACPI_COMPANION (int *) ;





 int EBUSY ;
 int EINVAL ;
 int ENODEV ;





 int PM_QOS_FLAGS_ALL ;
 int PM_QOS_FLAG_NO_POWER_OFF ;
 int acpi_device_set_power (struct acpi_device*,int const) ;
 scalar_t__ acpi_has_method (int ,char*) ;
 int acpi_power_state_string (int const) ;
 int dev_pm_qos_flags (int *,int ) ;
 int pci_dbg (struct pci_dev*,char*,int ) ;

__attribute__((used)) static int acpi_pci_set_power_state(struct pci_dev *dev, pci_power_t state)
{
 struct acpi_device *adev = ACPI_COMPANION(&dev->dev);
 static const u8 state_conv[] = {
  [132] = 137,
  [131] = 136,
  [130] = 135,
  [128] = 133,
  [129] = 134,
 };
 int error = -EINVAL;


 if (!adev || acpi_has_method(adev->handle, "_EJ0"))
  return -ENODEV;

 switch (state) {
 case 129:
  if (dev_pm_qos_flags(&dev->dev, PM_QOS_FLAG_NO_POWER_OFF) ==
    PM_QOS_FLAGS_ALL) {
   error = -EBUSY;
   break;
  }

 case 132:
 case 131:
 case 130:
 case 128:
  error = acpi_device_set_power(adev, state_conv[state]);
 }

 if (!error)
  pci_dbg(dev, "power state changed by ACPI to %s\n",
    acpi_power_state_string(state_conv[state]));

 return error;
}
