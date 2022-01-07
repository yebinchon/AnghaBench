
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int device_remove_file (int *,int *) ;
 int irst_timeout_attr ;
 int irst_wakeup_attr ;

__attribute__((used)) static int irst_remove(struct acpi_device *acpi)
{
 device_remove_file(&acpi->dev, &irst_wakeup_attr);
 device_remove_file(&acpi->dev, &irst_timeout_attr);

 return 0;
}
