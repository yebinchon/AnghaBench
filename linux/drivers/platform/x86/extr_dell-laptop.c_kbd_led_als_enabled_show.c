
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_state {int mode_bit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kbd_get_state (struct kbd_state*) ;
 int kbd_is_als_mode_bit (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t kbd_led_als_enabled_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct kbd_state state;
 bool enabled = 0;
 int ret;

 ret = kbd_get_state(&state);
 if (ret)
  return ret;
 enabled = kbd_is_als_mode_bit(state.mode_bit);

 return sprintf(buf, "%d\n", enabled ? 1 : 0);
}
