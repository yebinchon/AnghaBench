
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 size_t TEST_BATTERY ;
 int battery_voltage ;
 int signal_power_supply_changed (int ) ;
 int sscanf (char const*,char*,int*) ;
 int * test_power_supplies ;

__attribute__((used)) static int param_set_battery_voltage(const char *key,
     const struct kernel_param *kp)
{
 int tmp;

 if (1 != sscanf(key, "%d", &tmp))
  return -EINVAL;

 battery_voltage = tmp;
 signal_power_supply_changed(test_power_supplies[TEST_BATTERY]);
 return 0;
}
