
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct max3421_hcd_platform_data {void* vbus_active_level; void* vbus_gpout; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,void*,void*) ;
 int of_property_read_u32_array (int ,char*,void**,int) ;

__attribute__((used)) static int
max3421_of_vbus_en_pin(struct device *dev, struct max3421_hcd_platform_data *pdata)
{
 int retval;
 uint32_t value[2];

 if (!pdata)
  return -EINVAL;

 retval = of_property_read_u32_array(dev->of_node, "maxim,vbus-en-pin", value, 2);
 if (retval) {
  dev_err(dev, "device tree node property 'maxim,vbus-en-pin' is missing\n");
  return retval;
 }
 dev_info(dev, "property 'maxim,vbus-en-pin' value is <%d %d>\n", value[0], value[1]);

 pdata->vbus_gpout = value[0];
 pdata->vbus_active_level = value[1];

 return 0;
}
