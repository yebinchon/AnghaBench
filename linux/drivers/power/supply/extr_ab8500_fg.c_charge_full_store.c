
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_mah; } ;
struct ab8500_fg {TYPE_1__ bat_cap; } ;
typedef int ssize_t ;


 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t charge_full_store(struct ab8500_fg *di, const char *buf,
     size_t count)
{
 unsigned long charge_full;
 int ret;

 ret = kstrtoul(buf, 10, &charge_full);
 if (ret)
  return ret;

 di->bat_cap.max_mah = (int) charge_full;
 return count;
}
