
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_5__ {int dsw_present; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_8__ {int prepare_count; TYPE_3__ flags; } ;
struct acpi_device {TYPE_2__ power; TYPE_4__ wakeup; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 scalar_t__ ACPI_STATE_S0 ;
 int acpi_device_power_manageable (struct acpi_device*) ;
 scalar_t__ acpi_target_system_state () ;
 int device_may_wakeup (int *) ;
 scalar_t__ pci_is_bridge (struct pci_dev*) ;

__attribute__((used)) static bool acpi_pci_need_resume(struct pci_dev *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(&dev->dev);
 if (pci_is_bridge(dev) && acpi_target_system_state() != ACPI_STATE_S0)
  return 1;

 if (!adev || !acpi_device_power_manageable(adev))
  return 0;

 if (adev->wakeup.flags.valid &&
     device_may_wakeup(&dev->dev) != !!adev->wakeup.prepare_count)
  return 1;

 if (acpi_target_system_state() == ACPI_STATE_S0)
  return 0;

 return !!adev->power.flags.dsw_present;
}
