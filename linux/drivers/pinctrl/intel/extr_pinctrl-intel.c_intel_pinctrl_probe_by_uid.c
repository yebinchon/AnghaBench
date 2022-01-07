
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device_id {scalar_t__ driver_data; } ;
struct platform_device {size_t id; int dev; } ;
struct intel_pinctrl_soc_data {int uid; } ;
struct TYPE_2__ {int unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int ENODEV ;
 void* device_get_match_data (int *) ;
 int intel_pinctrl_probe (struct platform_device*,struct intel_pinctrl_soc_data const*) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 int strcmp (int ,int ) ;

int intel_pinctrl_probe_by_uid(struct platform_device *pdev)
{
 const struct intel_pinctrl_soc_data *data = ((void*)0);
 const struct intel_pinctrl_soc_data **table;
 struct acpi_device *adev;
 unsigned int i;

 adev = ACPI_COMPANION(&pdev->dev);
 if (adev) {
  const void *match = device_get_match_data(&pdev->dev);

  table = (const struct intel_pinctrl_soc_data **)match;
  for (i = 0; table[i]; i++) {
   if (!strcmp(adev->pnp.unique_id, table[i]->uid)) {
    data = table[i];
    break;
   }
  }
 } else {
  const struct platform_device_id *id;

  id = platform_get_device_id(pdev);
  if (!id)
   return -ENODEV;

  table = (const struct intel_pinctrl_soc_data **)id->driver_data;
  data = table[pdev->id];
 }

 return intel_pinctrl_probe(pdev, data);
}
