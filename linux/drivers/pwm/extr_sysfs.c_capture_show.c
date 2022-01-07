
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_capture {int period; int duty_cycle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 struct pwm_device* child_to_pwm_device (struct device*) ;
 int jiffies_to_msecs (int ) ;
 int pwm_capture (struct pwm_device*,struct pwm_capture*,int ) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t capture_show(struct device *child,
       struct device_attribute *attr,
       char *buf)
{
 struct pwm_device *pwm = child_to_pwm_device(child);
 struct pwm_capture result;
 int ret;

 ret = pwm_capture(pwm, &result, jiffies_to_msecs(HZ));
 if (ret)
  return ret;

 return sprintf(buf, "%u %u\n", result.period, result.duty_cycle);
}
