
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_acpi {int ucsi; } ;
struct platform_device {int dev; } ;


 int ACPI_DEVICE_NOTIFY ;
 int ACPI_HANDLE (int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 struct ucsi_acpi* platform_get_drvdata (struct platform_device*) ;
 int ucsi_acpi_notify ;
 int ucsi_unregister_ppm (int ) ;

__attribute__((used)) static int ucsi_acpi_remove(struct platform_device *pdev)
{
 struct ucsi_acpi *ua = platform_get_drvdata(pdev);

 ucsi_unregister_ppm(ua->ucsi);

 acpi_remove_notify_handler(ACPI_HANDLE(&pdev->dev), ACPI_DEVICE_NOTIFY,
       ucsi_acpi_notify);

 return 0;
}
