
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_state {int als_setting; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kbd_get_state (struct kbd_state*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t kbd_led_als_setting_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct kbd_state state;
 int ret;

 ret = kbd_get_state(&state);
 if (ret)
  return ret;

 return sprintf(buf, "%d\n", state.als_setting);
}
