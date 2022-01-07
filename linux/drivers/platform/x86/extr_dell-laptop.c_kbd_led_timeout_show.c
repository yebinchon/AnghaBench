
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kbd_state {int timeout_value_ac; int timeout_unit_ac; int timeout_value; int timeout_unit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;




 int kbd_get_state (struct kbd_state*) ;
 scalar_t__ kbd_timeout_ac_supported ;
 scalar_t__ power_supply_is_system_supplied () ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t kbd_led_timeout_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct kbd_state state;
 int value;
 int ret;
 int len;
 u8 unit;

 ret = kbd_get_state(&state);
 if (ret)
  return ret;

 if (kbd_timeout_ac_supported && power_supply_is_system_supplied() > 0) {
  value = state.timeout_value_ac;
  unit = state.timeout_unit_ac;
 } else {
  value = state.timeout_value;
  unit = state.timeout_unit;
 }

 len = sprintf(buf, "%d", value);

 switch (unit) {
 case 128:
  return len + sprintf(buf+len, "s\n");
 case 129:
  return len + sprintf(buf+len, "m\n");
 case 130:
  return len + sprintf(buf+len, "h\n");
 case 131:
  return len + sprintf(buf+len, "d\n");
 default:
  return -EINVAL;
 }

 return len;
}
