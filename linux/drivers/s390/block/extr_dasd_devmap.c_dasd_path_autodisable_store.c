
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DASD_FEATURE_PATH_AUTODISABLE ;
 size_t EINVAL ;
 int dasd_set_feature (int ,int ,unsigned int) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_path_autodisable_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 unsigned int val;
 int rc;

 if (kstrtouint(buf, 0, &val) || val > 1)
  return -EINVAL;

 rc = dasd_set_feature(to_ccwdev(dev),
         DASD_FEATURE_PATH_AUTODISABLE, val);

 return rc ? : count;
}
