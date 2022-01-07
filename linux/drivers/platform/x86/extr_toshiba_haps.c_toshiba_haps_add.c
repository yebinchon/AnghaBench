
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_haps_dev {int protection_level; struct acpi_device* acpi_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; int handle; struct toshiba_haps_dev* driver_data; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (TYPE_1__*,struct toshiba_haps_dev*) ;
 int haps_attr_group ;
 struct toshiba_haps_dev* kzalloc (int,int ) ;
 int pr_info (char*) ;
 int sysfs_create_group (int *,int *) ;
 struct toshiba_haps_dev* toshiba_haps ;
 int toshiba_haps_available (int ) ;
 int toshiba_haps_protection_level (int ,int) ;

__attribute__((used)) static int toshiba_haps_add(struct acpi_device *acpi_dev)
{
 struct toshiba_haps_dev *haps;
 int ret;

 if (toshiba_haps)
  return -EBUSY;

 if (!toshiba_haps_available(acpi_dev->handle))
  return -ENODEV;

 pr_info("Toshiba HDD Active Protection Sensor device\n");

 haps = kzalloc(sizeof(struct toshiba_haps_dev), GFP_KERNEL);
 if (!haps)
  return -ENOMEM;

 haps->acpi_dev = acpi_dev;
 haps->protection_level = 2;
 acpi_dev->driver_data = haps;
 dev_set_drvdata(&acpi_dev->dev, haps);


 ret = toshiba_haps_protection_level(acpi_dev->handle, 2);
 if (ret != 0)
  return ret;

 ret = sysfs_create_group(&acpi_dev->dev.kobj, &haps_attr_group);
 if (ret)
  return ret;

 toshiba_haps = haps;

 return 0;
}
