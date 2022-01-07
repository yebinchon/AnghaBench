
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int sscanf (char const*,char*,int*,int*,...) ;

__attribute__((used)) static inline int str_to_slot(const char *buf, int *domain, int *bus,
         int *slot, int *func)
{
 int parsed = 0;

 switch (sscanf(buf, " %x:%x:%x.%x %n", domain, bus, slot, func,
         &parsed)) {
 case 3:
  *func = -1;
  sscanf(buf, " %x:%x:%x.* %n", domain, bus, slot, &parsed);
  break;
 case 2:
  *slot = *func = -1;
  sscanf(buf, " %x:%x:*.* %n", domain, bus, &parsed);
  break;
 }
 if (parsed && !buf[parsed])
  return 0;


 *domain = 0;
 switch (sscanf(buf, " %x:%x.%x %n", bus, slot, func, &parsed)) {
 case 2:
  *func = -1;
  sscanf(buf, " %x:%x.* %n", bus, slot, &parsed);
  break;
 case 1:
  *slot = *func = -1;
  sscanf(buf, " %x:*.* %n", bus, &parsed);
  break;
 }
 if (parsed && !buf[parsed])
  return 0;

 return -EINVAL;
}
