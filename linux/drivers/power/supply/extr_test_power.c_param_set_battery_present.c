
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 size_t TEST_AC ;
 int battery_present ;
 int map_get_value (int ,char const*,int ) ;
 int map_present ;
 int signal_power_supply_changed (int ) ;
 int * test_power_supplies ;

__attribute__((used)) static int param_set_battery_present(const char *key,
     const struct kernel_param *kp)
{
 battery_present = map_get_value(map_present, key, battery_present);
 signal_power_supply_changed(test_power_supplies[TEST_AC]);
 return 0;
}
