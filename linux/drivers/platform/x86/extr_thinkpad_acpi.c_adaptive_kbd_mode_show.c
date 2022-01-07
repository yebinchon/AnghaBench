
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int adaptive_keyboard_get_mode () ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t adaptive_kbd_mode_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int current_mode;

 current_mode = adaptive_keyboard_get_mode();
 if (current_mode < 0)
  return current_mode;

 return snprintf(buf, PAGE_SIZE, "%d\n", current_mode);
}
