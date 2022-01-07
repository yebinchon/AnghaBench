
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int product; int vendor; } ;
struct TYPE_7__ {int * type; int * bus; struct device* parent; } ;
struct ulpi {TYPE_1__ id; TYPE_2__ dev; } ;
struct device {int dummy; } ;


 int ACPI_COMPANION (struct device*) ;
 int ACPI_COMPANION_SET (TYPE_2__*,int ) ;
 int dev_dbg (TYPE_2__*,char*,int ,int ) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int ulpi_bus ;
 int ulpi_dev_type ;
 int ulpi_of_register (struct ulpi*) ;
 int ulpi_read_id (struct ulpi*) ;

__attribute__((used)) static int ulpi_register(struct device *dev, struct ulpi *ulpi)
{
 int ret;

 ulpi->dev.parent = dev;
 ulpi->dev.bus = &ulpi_bus;
 ulpi->dev.type = &ulpi_dev_type;
 dev_set_name(&ulpi->dev, "%s.ulpi", dev_name(dev));

 ACPI_COMPANION_SET(&ulpi->dev, ACPI_COMPANION(dev));

 ret = ulpi_of_register(ulpi);
 if (ret)
  return ret;

 ret = ulpi_read_id(ulpi);
 if (ret)
  return ret;

 ret = device_register(&ulpi->dev);
 if (ret)
  return ret;

 dev_dbg(&ulpi->dev, "registered ULPI PHY: vendor %04x, product %04x\n",
  ulpi->id.vendor, ulpi->id.product);

 return 0;
}
