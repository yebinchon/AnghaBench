
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HPWMI_TABLET_MASK ;
 int hp_wmi_hw_state (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t tablet_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 int value = hp_wmi_hw_state(HPWMI_TABLET_MASK);
 if (value < 0)
  return value;
 return sprintf(buf, "%d\n", value);
}
