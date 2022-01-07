
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_bl {int cb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct lm3533_bl* dev_get_drvdata (struct device*) ;
 int lm3533_ctrlbank_get_pwm (int *,int *) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_pwm(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct lm3533_bl *bl = dev_get_drvdata(dev);
 u8 val;
 int ret;

 ret = lm3533_ctrlbank_get_pwm(&bl->cb, &val);
 if (ret)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "%u\n", val);
}
