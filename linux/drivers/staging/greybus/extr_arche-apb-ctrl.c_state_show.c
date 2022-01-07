
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arche_apb_ctrl_drvdata {int state; int init_disabled; } ;
typedef int ssize_t ;






 struct arche_apb_ctrl_drvdata* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t state_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct arche_apb_ctrl_drvdata *apb = dev_get_drvdata(dev);

 switch (apb->state) {
 case 129:
  return sprintf(buf, "off%s\n",
    apb->init_disabled ? ",disabled" : "");
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
