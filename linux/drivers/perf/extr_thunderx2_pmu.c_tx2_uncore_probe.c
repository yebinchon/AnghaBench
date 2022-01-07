
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ACPI_TYPE_DEVICE ;
 int EINVAL ;
 int ENODEV ;
 int acpi_get_node (int ) ;
 int acpi_walk_namespace (int ,int ,int,int ,int *,struct device*,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_to_node (struct device*) ;
 int has_acpi_companion (struct device*) ;
 int return_ACPI_STATUS (int ) ;
 int set_dev_node (struct device*,int ) ;
 int tx2_uncore_pmu_add ;

__attribute__((used)) static int tx2_uncore_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 acpi_handle handle;
 acpi_status status;

 set_dev_node(dev, acpi_get_node(ACPI_HANDLE(dev)));

 if (!has_acpi_companion(dev))
  return -ENODEV;

 handle = ACPI_HANDLE(dev);
 if (!handle)
  return -EINVAL;


 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
         tx2_uncore_pmu_add,
         ((void*)0), dev, ((void*)0));
 if (ACPI_FAILURE(status)) {
  dev_err(dev, "failed to probe PMU devices\n");
  return_ACPI_STATUS(status);
 }

 dev_info(dev, "node%d: pmu uncore registered\n", dev_to_node(dev));
 return 0;
}
