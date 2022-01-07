
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {int fan_pwm_mode; } ;
typedef int ssize_t ;


 int ASUS_FAN_CTRL_MANUAL ;
 int asus_agfn_fan_speed_write (struct asus_wmi*,int,int*) ;
 int clamp (int,int ,int) ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,int*) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static ssize_t pwm1_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count) {
 struct asus_wmi *asus = dev_get_drvdata(dev);
 int value;
 int state;
 int ret;

 ret = kstrtouint(buf, 10, &value);
 if (ret)
  return ret;

 value = clamp(value, 0, 255);

 state = asus_agfn_fan_speed_write(asus, 1, &value);
 if (state)
  pr_warn("Setting fan speed failed: %d\n", state);
 else
  asus->fan_pwm_mode = ASUS_FAN_CTRL_MANUAL;

 return count;
}
