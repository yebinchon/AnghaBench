
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int hotkey_get_tablet_mode (int*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t hotkey_tablet_mode_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int res, s;
 res = hotkey_get_tablet_mode(&s);
 if (res < 0)
  return res;

 return snprintf(buf, PAGE_SIZE, "%d\n", !!s);
}
