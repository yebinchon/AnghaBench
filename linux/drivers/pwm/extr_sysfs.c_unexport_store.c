
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_chip {unsigned int npwm; int * pwms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct pwm_chip* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int pwm_unexport_child (struct device*,int *) ;

__attribute__((used)) static ssize_t unexport_store(struct device *parent,
         struct device_attribute *attr,
         const char *buf, size_t len)
{
 struct pwm_chip *chip = dev_get_drvdata(parent);
 unsigned int hwpwm;
 int ret;

 ret = kstrtouint(buf, 0, &hwpwm);
 if (ret < 0)
  return ret;

 if (hwpwm >= chip->npwm)
  return -ENODEV;

 ret = pwm_unexport_child(parent, &chip->pwms[hwpwm]);

 return ret ? : len;
}
