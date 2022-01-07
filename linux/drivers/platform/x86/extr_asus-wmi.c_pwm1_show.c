
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {scalar_t__ agfn_pwm; } ;
typedef int ssize_t ;


 int ASUS_WMI_DEVID_FAN_CTRL ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;
 int pr_err (char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pwm1_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct asus_wmi *asus = dev_get_drvdata(dev);
 int err;
 int value;


 if (asus->agfn_pwm >= 0)
  return sprintf(buf, "%d\n", asus->agfn_pwm);





 err = asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_FAN_CTRL, &value);
 if (err < 0)
  return err;

 value &= 0xFF;

 if (value == 1)
  value = 85;
 else if (value == 2)
  value = 170;
 else if (value == 3)
  value = 255;
 else if (value) {
  pr_err("Unknown fan speed %#x\n", value);
  value = -1;
 }

 return sprintf(buf, "%d\n", value);
}
