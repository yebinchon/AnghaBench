
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int PAGE_SIZE ;
 int get_lightbar_version (struct cros_ec_dev*,int *,int *) ;
 int lb_throttle () ;
 int scnprintf (char*,int ,char*,int ,int ) ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t version_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 uint32_t version = 0, flags = 0;
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);
 int ret;

 ret = lb_throttle();
 if (ret)
  return ret;


 if (!get_lightbar_version(ec, &version, &flags))
  return -EIO;

 return scnprintf(buf, PAGE_SIZE, "%d %d\n", version, flags);
}
