
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int irst_timeout_attr ;
 int irst_wakeup_attr ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int irst_add(struct acpi_device *acpi)
{
 int error;

 error = device_create_file(&acpi->dev, &irst_timeout_attr);
 if (unlikely(error))
  return error;

 error = device_create_file(&acpi->dev, &irst_wakeup_attr);
 if (unlikely(error))
  device_remove_file(&acpi->dev, &irst_timeout_attr);

 return error;
}
