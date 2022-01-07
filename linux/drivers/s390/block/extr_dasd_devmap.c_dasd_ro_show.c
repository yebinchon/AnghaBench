
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; struct dasd_device* device; } ;
struct dasd_device {int flags; } ;
typedef int ssize_t ;


 int DASD_FEATURE_READONLY ;
 int DASD_FLAG_DEVICE_RO ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 int PAGE_SIZE ;
 int dasd_devmap_lock ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dev_name (struct device*) ;
 int snprintf (char*,int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
dasd_ro_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct dasd_devmap *devmap;
 struct dasd_device *device;
 int ro_flag = 0;

 devmap = dasd_find_busid(dev_name(dev));
 if (IS_ERR(devmap))
  goto out;

 ro_flag = !!(devmap->features & DASD_FEATURE_READONLY);

 spin_lock(&dasd_devmap_lock);
 device = devmap->device;
 if (device)
  ro_flag |= test_bit(DASD_FLAG_DEVICE_RO, &device->flags);
 spin_unlock(&dasd_devmap_lock);

out:
 return snprintf(buf, PAGE_SIZE, ro_flag ? "1\n" : "0\n");
}
