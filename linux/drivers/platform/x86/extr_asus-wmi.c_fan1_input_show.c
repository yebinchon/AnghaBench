
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {int fan_type; int fan_pwm_mode; } ;
typedef int ssize_t ;


 int ASUS_FAN_CTRL_MANUAL ;
 int ASUS_WMI_DEVID_CPU_FAN_CTRL ;
 int ENXIO ;


 int asus_agfn_fan_speed_read (struct asus_wmi*,int,int*) ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;
 int pr_warn (char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan1_input_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct asus_wmi *asus = dev_get_drvdata(dev);
 int value;
 int ret;

 switch (asus->fan_type) {
 case 128:
  ret = asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_CPU_FAN_CTRL,
         &value);
  if (ret < 0)
   return ret;

  value &= 0xffff;
  break;

 case 129:

  if (asus->fan_pwm_mode == ASUS_FAN_CTRL_MANUAL)
   return -ENXIO;

  ret = asus_agfn_fan_speed_read(asus, 1, &value);
  if (ret) {
   pr_warn("reading fan speed failed: %d\n", ret);
   return -ENXIO;
  }
  break;

 default:
  return -ENXIO;
 }

 return sprintf(buf, "%d\n", value < 0 ? -1 : value*100);
}
