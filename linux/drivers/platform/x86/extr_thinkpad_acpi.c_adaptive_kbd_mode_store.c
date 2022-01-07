
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int LAYFLAT_MODE ;
 int adaptive_keyboard_set_mode (unsigned long) ;
 scalar_t__ parse_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t adaptive_kbd_mode_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long t;
 int res;

 if (parse_strtoul(buf, LAYFLAT_MODE, &t))
  return -EINVAL;

 res = adaptive_keyboard_set_mode(t);
 return (res < 0) ? res : count;
}
