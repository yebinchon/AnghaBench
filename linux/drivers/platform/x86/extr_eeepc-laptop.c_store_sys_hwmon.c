
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int parse_arg (char const*,int*) ;

__attribute__((used)) static ssize_t store_sys_hwmon(void (*set)(int), const char *buf, size_t count)
{
 int rv, value;

 rv = parse_arg(buf, &value);
 if (rv < 0)
  return rv;
 set(value);
 return count;
}
