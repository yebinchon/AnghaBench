
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arche_platform_drvdata {int state; } ;
typedef int ssize_t ;






 struct arche_platform_drvdata* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct arche_platform_drvdata *arche_pdata = dev_get_drvdata(dev);

 switch (arche_pdata->state) {
 case 129:
  return sprintf(buf, "off\n");
 case 131:
  return sprintf(buf, "active\n");
 case 128:
  return sprintf(buf, "standby\n");
 case 130:
  return sprintf(buf, "fw_flashing\n");
 default:
  return sprintf(buf, "unknown state\n");
 }
}
