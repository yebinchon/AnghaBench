
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt9455_info {int boost_voltage; int voreg; TYPE_1__* client; } ;
struct device {int of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int ACPI_HANDLE (struct device*) ;
 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static int rt9455_discover_charger(struct rt9455_info *info, u32 *ichrg,
       u32 *ieoc_percentage,
       u32 *mivr, u32 *iaicr)
{
 struct device *dev = &info->client->dev;
 int ret;

 if (!dev->of_node && !ACPI_HANDLE(dev)) {
  dev_err(dev, "No support for either device tree or ACPI\n");
  return -EINVAL;
 }




 ret = device_property_read_u32(dev, "richtek,output-charge-current",
           ichrg);
 if (ret) {
  dev_err(dev, "Error: missing \"output-charge-current\" property\n");
  return ret;
 }

 ret = device_property_read_u32(dev, "richtek,end-of-charge-percentage",
           ieoc_percentage);
 if (ret) {
  dev_err(dev, "Error: missing \"end-of-charge-percentage\" property\n");
  return ret;
 }

 ret = device_property_read_u32(dev,
           "richtek,battery-regulation-voltage",
           &info->voreg);
 if (ret) {
  dev_err(dev, "Error: missing \"battery-regulation-voltage\" property\n");
  return ret;
 }

 ret = device_property_read_u32(dev, "richtek,boost-output-voltage",
           &info->boost_voltage);
 if (ret) {
  dev_err(dev, "Error: missing \"boost-output-voltage\" property\n");
  return ret;
 }





 device_property_read_u32(dev, "richtek,min-input-voltage-regulation",
     mivr);
 device_property_read_u32(dev, "richtek,avg-input-current-regulation",
     iaicr);

 return 0;
}
