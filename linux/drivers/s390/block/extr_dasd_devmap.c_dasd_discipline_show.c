
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {TYPE_1__* discipline; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PAGE_SIZE ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int snprintf (char*,int ,char*,...) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_discipline_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct dasd_device *device;
 ssize_t len;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  goto out;
 else if (!device->discipline) {
  dasd_put_device(device);
  goto out;
 } else {
  len = snprintf(buf, PAGE_SIZE, "%s\n",
          device->discipline->name);
  dasd_put_device(device);
  return len;
 }
out:
 len = snprintf(buf, PAGE_SIZE, "none\n");
 return len;
}
