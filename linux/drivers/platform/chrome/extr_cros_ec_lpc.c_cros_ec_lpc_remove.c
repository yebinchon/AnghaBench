
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cros_ec_device {int dummy; } ;
struct acpi_device {int handle; } ;


 int ACPI_ALL_NOTIFY ;
 struct acpi_device* ACPI_COMPANION (int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int cros_ec_lpc_acpi_notify ;
 int cros_ec_unregister (struct cros_ec_device*) ;
 struct cros_ec_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cros_ec_lpc_remove(struct platform_device *pdev)
{
 struct cros_ec_device *ec_dev = platform_get_drvdata(pdev);
 struct acpi_device *adev;

 adev = ACPI_COMPANION(&pdev->dev);
 if (adev)
  acpi_remove_notify_handler(adev->handle, ACPI_ALL_NOTIFY,
        cros_ec_lpc_acpi_notify);

 return cros_ec_unregister(ec_dev);
}
