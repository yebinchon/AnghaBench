
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ old_ec_model; } ;


 int ENODEV ;
 int get_wireless_state_ec_standard () ;
 TYPE_1__* quirks ;
 int sprintf (char*,char*,int) ;
 int threeg_s ;

__attribute__((used)) static ssize_t show_threeg(struct device *dev,
 struct device_attribute *attr, char *buf)
{

 int ret;


 if (quirks->old_ec_model)
  return -ENODEV;

 ret = get_wireless_state_ec_standard();
 if (ret < 0)
  return ret;

 return sprintf(buf, "%i\n", threeg_s);
}
