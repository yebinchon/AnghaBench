
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 size_t TEST_BATTERY ;
 int battery_technology ;
 int map_get_value (int ,char const*,int ) ;
 int map_technology ;
 int signal_power_supply_changed (int ) ;
 int * test_power_supplies ;

__attribute__((used)) static int param_set_battery_technology(const char *key,
     const struct kernel_param *kp)
{
 battery_technology = map_get_value(map_technology, key,
      battery_technology);
 signal_power_supply_changed(test_power_supplies[TEST_BATTERY]);
 return 0;
}
