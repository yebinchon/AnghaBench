
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_bl {int cb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct lm3533_bl* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtou8 (char const*,int ,int *) ;
 int lm3533_ctrlbank_set_pwm (int *,int ) ;

__attribute__((used)) static ssize_t store_pwm(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct lm3533_bl *bl = dev_get_drvdata(dev);
 u8 val;
 int ret;

 if (kstrtou8(buf, 0, &val))
  return -EINVAL;

 ret = lm3533_ctrlbank_set_pwm(&bl->cb, val);
 if (ret)
  return ret;

 return len;
}
