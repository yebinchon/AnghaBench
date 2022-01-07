
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ target_pages; } ;


 unsigned long long PAGE_SHIFT ;
 TYPE_1__ balloon_stats ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t show_target(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 return sprintf(buf, "%llu\n",
         (unsigned long long)balloon_stats.target_pages
         << PAGE_SHIFT);
}
