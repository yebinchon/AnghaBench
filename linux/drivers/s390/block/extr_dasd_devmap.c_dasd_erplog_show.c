
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; } ;
typedef int ssize_t ;


 int DASD_FEATURE_DEFAULT ;
 int DASD_FEATURE_ERPLOG ;
 int IS_ERR (struct dasd_devmap*) ;
 int PAGE_SIZE ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dev_name (struct device*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
dasd_erplog_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct dasd_devmap *devmap;
 int erplog;

 devmap = dasd_find_busid(dev_name(dev));
 if (!IS_ERR(devmap))
  erplog = (devmap->features & DASD_FEATURE_ERPLOG) != 0;
 else
  erplog = (DASD_FEATURE_DEFAULT & DASD_FEATURE_ERPLOG) != 0;
 return snprintf(buf, PAGE_SIZE, erplog ? "1\n" : "0\n");
}
