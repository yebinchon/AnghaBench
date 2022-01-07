
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smo8800_device {int miscdev; int irq; } ;
struct acpi_device {int dev; struct smo8800_device* driver_data; } ;


 int dev_dbg (int *,char*) ;
 int free_irq (int ,struct smo8800_device*) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int smo8800_remove(struct acpi_device *device)
{
 struct smo8800_device *smo8800 = device->driver_data;

 free_irq(smo8800->irq, smo8800);
 misc_deregister(&smo8800->miscdev);
 dev_dbg(&device->dev, "device /dev/freefall unregistered\n");
 return 0;
}
