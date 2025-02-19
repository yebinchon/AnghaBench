
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {unsigned int npwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct pwm_device*) ;
 int PTR_ERR (struct pwm_device*) ;
 struct pwm_chip* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int pwm_export_child (struct device*,struct pwm_device*) ;
 int pwm_put (struct pwm_device*) ;
 struct pwm_device* pwm_request_from_chip (struct pwm_chip*,unsigned int,char*) ;

__attribute__((used)) static ssize_t export_store(struct device *parent,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct pwm_chip *chip = dev_get_drvdata(parent);
 struct pwm_device *pwm;
 unsigned int hwpwm;
 int ret;

 ret = kstrtouint(buf, 0, &hwpwm);
 if (ret < 0)
  return ret;

 if (hwpwm >= chip->npwm)
  return -ENODEV;

 pwm = pwm_request_from_chip(chip, hwpwm, "sysfs");
 if (IS_ERR(pwm))
  return PTR_ERR(pwm);

 ret = pwm_export_child(parent, pwm);
 if (ret < 0)
  pwm_put(pwm);

 return ret ? : len;
}
