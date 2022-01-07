
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kbd_state {int timeout_value_ac; int timeout_unit_ac; int timeout_value; int timeout_unit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int seconds; int minutes; int hours; int days; } ;
struct TYPE_3__ {int* kbd_timeouts; scalar_t__ needs_kbd_timeouts; } ;


 int EINVAL ;



 int KBD_TIMEOUT_SECONDS ;
 int kbd_get_state (struct kbd_state*) ;
 TYPE_2__ kbd_info ;
 int kbd_led_mutex ;
 int kbd_set_state_safe (struct kbd_state*,struct kbd_state*) ;
 scalar_t__ kbd_timeout_ac_supported ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ power_supply_is_system_supplied () ;
 TYPE_1__* quirks ;
 int sscanf (char const*,char*,int*,char*) ;

__attribute__((used)) static ssize_t kbd_led_timeout_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct kbd_state new_state;
 struct kbd_state state;
 bool convert;
 int value;
 int ret;
 char ch;
 u8 unit;
 int i;

 ret = sscanf(buf, "%d %c", &value, &ch);
 if (ret < 1)
  return -EINVAL;
 else if (ret == 1)
  ch = 's';

 if (value < 0)
  return -EINVAL;

 convert = 0;

 switch (ch) {
 case 's':
  if (value > kbd_info.seconds)
   convert = 1;
  unit = KBD_TIMEOUT_SECONDS;
  break;
 case 'm':
  if (value > kbd_info.minutes)
   convert = 1;
  unit = 128;
  break;
 case 'h':
  if (value > kbd_info.hours)
   convert = 1;
  unit = 129;
  break;
 case 'd':
  if (value > kbd_info.days)
   convert = 1;
  unit = 130;
  break;
 default:
  return -EINVAL;
 }

 if (quirks && quirks->needs_kbd_timeouts)
  convert = 1;

 if (convert) {

  switch (unit) {
  case 130:
   value *= 24;

  case 129:
   value *= 60;

  case 128:
   value *= 60;
   unit = KBD_TIMEOUT_SECONDS;
  }

  if (quirks && quirks->needs_kbd_timeouts) {
   for (i = 0; quirks->kbd_timeouts[i] != -1; i++) {
    if (value <= quirks->kbd_timeouts[i]) {
     value = quirks->kbd_timeouts[i];
     break;
    }
   }
  }

  if (value <= kbd_info.seconds && kbd_info.seconds) {
   unit = KBD_TIMEOUT_SECONDS;
  } else if (value / 60 <= kbd_info.minutes && kbd_info.minutes) {
   value /= 60;
   unit = 128;
  } else if (value / (60 * 60) <= kbd_info.hours && kbd_info.hours) {
   value /= (60 * 60);
   unit = 129;
  } else if (value / (60 * 60 * 24) <= kbd_info.days && kbd_info.days) {
   value /= (60 * 60 * 24);
   unit = 130;
  } else {
   return -EINVAL;
  }
 }

 mutex_lock(&kbd_led_mutex);

 ret = kbd_get_state(&state);
 if (ret)
  goto out;

 new_state = state;

 if (kbd_timeout_ac_supported && power_supply_is_system_supplied() > 0) {
  new_state.timeout_value_ac = value;
  new_state.timeout_unit_ac = unit;
 } else {
  new_state.timeout_value = value;
  new_state.timeout_unit = unit;
 }

 ret = kbd_set_state_safe(&new_state, &state);
 if (ret)
  goto out;

 ret = count;
out:
 mutex_unlock(&kbd_led_mutex);
 return ret;
}
