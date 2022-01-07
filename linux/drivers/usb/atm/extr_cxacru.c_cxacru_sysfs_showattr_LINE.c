
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t cxacru_sysfs_showattr_LINE(u32 value, char *buf)
{
 static char *str[] = { "down", "attempting to activate",
  "training", "channel analysis", "exchange", "up",
  "waiting", "initialising"
 };
 if (unlikely(value >= ARRAY_SIZE(str)))
  return snprintf(buf, PAGE_SIZE, "%u\n", value);
 return snprintf(buf, PAGE_SIZE, "%s\n", str[value]);
}
