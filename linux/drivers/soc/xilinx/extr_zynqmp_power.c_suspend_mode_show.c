
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 int PM_SUSPEND_MODE_FIRST ;
 int sprintf (char*,char*,char*) ;
 int suspend_mode ;
 char** suspend_modes ;

__attribute__((used)) static ssize_t suspend_mode_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 char *s = buf;
 int md;

 for (md = PM_SUSPEND_MODE_FIRST; md < ARRAY_SIZE(suspend_modes); md++)
  if (suspend_modes[md]) {
   if (md == suspend_mode)
    s += sprintf(s, "[%s] ", suspend_modes[md]);
   else
    s += sprintf(s, "%s ", suspend_modes[md]);
  }


 if (s != buf)
  *(s - 1) = '\n';
 return (s - buf);
}
