
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ old_ec_model; } ;


 int get_wireless_state (int*,int *) ;
 int get_wireless_state_ec_standard () ;
 TYPE_1__* quirks ;
 int sprintf (char*,char*,int) ;
 int wlan_s ;

__attribute__((used)) static ssize_t show_wlan(struct device *dev,
 struct device_attribute *attr, char *buf)
{

 int ret, enabled = 0;

 if (quirks->old_ec_model) {
  ret = get_wireless_state(&enabled, ((void*)0));
 } else {
  ret = get_wireless_state_ec_standard();
  enabled = wlan_s;
 }
 if (ret < 0)
  return ret;

 return sprintf(buf, "%i\n", enabled);
}
