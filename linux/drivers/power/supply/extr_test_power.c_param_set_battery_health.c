
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 size_t TEST_BATTERY ;
 int battery_health ;
 int map_get_value (int ,char const*,int ) ;
 int map_health ;
 int signal_power_supply_changed (int ) ;
 int * test_power_supplies ;

__attribute__((used)) static int param_set_battery_health(const char *key,
     const struct kernel_param *kp)
{
 battery_health = map_get_value(map_health, key, battery_health);
 signal_power_supply_changed(test_power_supplies[TEST_BATTERY]);
 return 0;
}
