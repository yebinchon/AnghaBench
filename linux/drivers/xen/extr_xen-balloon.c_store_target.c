
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EPERM ;
 unsigned long long PAGE_SHIFT ;
 int balloon_set_new_target (unsigned long long) ;
 int capable (int ) ;
 unsigned long long memparse (char const*,char**) ;

__attribute__((used)) static ssize_t store_target(struct device *dev,
       struct device_attribute *attr,
       const char *buf,
       size_t count)
{
 char *endchar;
 unsigned long long target_bytes;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 target_bytes = memparse(buf, &endchar);

 balloon_set_new_target(target_bytes >> PAGE_SHIFT);

 return count;
}
