
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 size_t PTR_ERR (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_eer_disable (struct dasd_device*) ;
 int dasd_eer_enable (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_eer_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct dasd_device *device;
 unsigned int val;
 int rc = 0;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return PTR_ERR(device);

 if (kstrtouint(buf, 0, &val) || val > 1)
  return -EINVAL;

 if (val)
  rc = dasd_eer_enable(device);
 else
  dasd_eer_disable(device);

 dasd_put_device(device);

 return rc ? : count;
}
