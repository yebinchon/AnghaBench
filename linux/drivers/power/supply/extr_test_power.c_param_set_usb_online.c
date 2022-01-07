
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 size_t TEST_USB ;
 int map_ac_online ;
 int map_get_value (int ,char const*,int ) ;
 int signal_power_supply_changed (int ) ;
 int * test_power_supplies ;
 int usb_online ;

__attribute__((used)) static int param_set_usb_online(const char *key, const struct kernel_param *kp)
{
 usb_online = map_get_value(map_ac_online, key, usb_online);
 signal_power_supply_changed(test_power_supplies[TEST_USB]);
 return 0;
}
