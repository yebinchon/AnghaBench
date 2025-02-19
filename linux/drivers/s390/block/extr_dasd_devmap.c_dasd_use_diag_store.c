
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; int device; } ;
typedef size_t ssize_t ;


 int DASD_FEATURE_USEDIAG ;
 int DASD_FEATURE_USERAW ;
 size_t EINVAL ;
 size_t EPERM ;
 scalar_t__ IS_ERR (struct dasd_devmap*) ;
 size_t PTR_ERR (struct dasd_devmap*) ;
 struct dasd_devmap* dasd_devmap_from_cdev (int ) ;
 int dasd_devmap_lock ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_use_diag_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct dasd_devmap *devmap;
 unsigned int val;
 ssize_t rc;

 devmap = dasd_devmap_from_cdev(to_ccwdev(dev));
 if (IS_ERR(devmap))
  return PTR_ERR(devmap);

 if (kstrtouint(buf, 0, &val) || val > 1)
  return -EINVAL;

 spin_lock(&dasd_devmap_lock);

 rc = count;
 if (!devmap->device && !(devmap->features & DASD_FEATURE_USERAW)) {
  if (val)
   devmap->features |= DASD_FEATURE_USEDIAG;
  else
   devmap->features &= ~DASD_FEATURE_USEDIAG;
 } else
  rc = -EPERM;
 spin_unlock(&dasd_devmap_lock);
 return rc;
}
