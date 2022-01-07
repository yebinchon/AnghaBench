
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kbd_state {int mode_bit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int modes; } ;


 int BIT (int ) ;
 int EINVAL ;
 int KBD_MODE_BIT_ALS ;
 int KBD_MODE_BIT_ON ;
 int KBD_MODE_BIT_TRIGGER ;
 int KBD_MODE_BIT_TRIGGER_ALS ;
 int kbd_get_state (struct kbd_state*) ;
 TYPE_1__ kbd_info ;
 int kbd_is_als_mode_bit (int ) ;
 int kbd_is_trigger_mode_bit (int ) ;
 int kbd_led_mutex ;
 int kbd_previous_level ;
 int kbd_previous_mode_bit ;
 int kbd_set_level (struct kbd_state*,int ) ;
 int kbd_set_state_safe (struct kbd_state*,struct kbd_state*) ;
 scalar_t__ kbd_triggers_supported ;
 int kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t kbd_led_als_enabled_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct kbd_state new_state;
 struct kbd_state state;
 bool triggers_enabled = 0;
 int enable;
 int ret;

 ret = kstrtoint(buf, 0, &enable);
 if (ret)
  return ret;

 mutex_lock(&kbd_led_mutex);

 ret = kbd_get_state(&state);
 if (ret)
  goto out;

 if (enable == kbd_is_als_mode_bit(state.mode_bit)) {
  ret = count;
  goto out;
 }

 new_state = state;

 if (kbd_triggers_supported)
  triggers_enabled = kbd_is_trigger_mode_bit(state.mode_bit);

 if (enable) {
  if (triggers_enabled)
   new_state.mode_bit = KBD_MODE_BIT_TRIGGER_ALS;
  else
   new_state.mode_bit = KBD_MODE_BIT_ALS;
 } else {
  if (triggers_enabled) {
   new_state.mode_bit = KBD_MODE_BIT_TRIGGER;
   kbd_set_level(&new_state, kbd_previous_level);
  } else {
   new_state.mode_bit = KBD_MODE_BIT_ON;
  }
 }
 if (!(kbd_info.modes & BIT(new_state.mode_bit))) {
  ret = -EINVAL;
  goto out;
 }

 ret = kbd_set_state_safe(&new_state, &state);
 if (ret)
  goto out;
 kbd_previous_mode_bit = new_state.mode_bit;

 ret = count;
out:
 mutex_unlock(&kbd_led_mutex);
 return ret;
}
