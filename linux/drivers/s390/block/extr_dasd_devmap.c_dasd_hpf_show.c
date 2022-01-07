
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {TYPE_1__* discipline; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* hpf_enabled ) (struct dasd_device*) ;} ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PAGE_SIZE ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_nofcx ;
 int dasd_put_device (struct dasd_device*) ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (struct dasd_device*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_hpf_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct dasd_device *device;
 int hpf;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return -ENODEV;
 if (!device->discipline || !device->discipline->hpf_enabled) {
  dasd_put_device(device);
  return snprintf(buf, PAGE_SIZE, "%d\n", dasd_nofcx);
 }
 hpf = device->discipline->hpf_enabled(device);
 dasd_put_device(device);
 return snprintf(buf, PAGE_SIZE, "%d\n", hpf);
}
