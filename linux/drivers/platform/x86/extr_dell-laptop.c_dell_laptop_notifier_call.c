
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;



 int NOTIFY_OK ;
 int kbd_led ;
 int kbd_led_level ;
 int kbd_led_level_get (int *) ;
 int kbd_led_mutex ;
 int kbd_led_present ;
 int led_classdev_notify_brightness_hw_changed (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dell_laptop_notifier_call(struct notifier_block *nb,
         unsigned long action, void *data)
{
 bool changed = 0;
 enum led_brightness new_kbd_led_level;

 switch (action) {
 case 128:
  if (!kbd_led_present)
   break;

  mutex_lock(&kbd_led_mutex);
  new_kbd_led_level = kbd_led_level_get(&kbd_led);
  if (kbd_led_level != new_kbd_led_level) {
   kbd_led_level = new_kbd_led_level;
   changed = 1;
  }
  mutex_unlock(&kbd_led_mutex);

  if (changed)
   led_classdev_notify_brightness_hw_changed(&kbd_led,
        kbd_led_level);
  break;
 }

 return NOTIFY_OK;
}
