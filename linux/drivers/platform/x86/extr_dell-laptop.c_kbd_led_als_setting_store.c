
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kbd_state {int als_setting; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kbd_get_state (struct kbd_state*) ;
 int kbd_led_mutex ;
 int kbd_set_state_safe (struct kbd_state*,struct kbd_state*) ;
 int kstrtou8 (char const*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t kbd_led_als_setting_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct kbd_state state;
 struct kbd_state new_state;
 u8 setting;
 int ret;

 ret = kstrtou8(buf, 10, &setting);
 if (ret)
  return ret;

 mutex_lock(&kbd_led_mutex);

 ret = kbd_get_state(&state);
 if (ret)
  goto out;

 new_state = state;
 new_state.als_setting = setting;

 ret = kbd_set_state_safe(&new_state, &state);
 if (ret)
  goto out;

 ret = count;
out:
 mutex_unlock(&kbd_led_mutex);
 return ret;
}
