
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct int3403_priv* devdata; } ;
struct int3403_priv {TYPE_1__* adev; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int EINVAL ;
 int acpi_execute_simple_method (int ,char*,unsigned long) ;

__attribute__((used)) static int
int3403_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
{
 struct int3403_priv *priv = cdev->devdata;
 acpi_status status;

 status = acpi_execute_simple_method(priv->adev->handle, "SPPC", state);
 if (ACPI_SUCCESS(status))
  return 0;
 else
  return -EINVAL;
}
