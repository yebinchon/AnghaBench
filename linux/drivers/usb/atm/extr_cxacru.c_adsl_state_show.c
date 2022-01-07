
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {int* card_info; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 size_t CXINF_LINE_STARTABLE ;
 int ENODEV ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;
 int to_usb_interface (struct device*) ;
 struct cxacru_data* to_usbatm_driver_data (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t adsl_state_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 static char *str[] = { "running", "stopped" };
 struct cxacru_data *instance = to_usbatm_driver_data(
   to_usb_interface(dev));
 u32 value;

 if (instance == ((void*)0))
  return -ENODEV;

 value = instance->card_info[CXINF_LINE_STARTABLE];
 if (unlikely(value >= ARRAY_SIZE(str)))
  return snprintf(buf, PAGE_SIZE, "%u\n", value);
 return snprintf(buf, PAGE_SIZE, "%s\n", str[value]);
}
