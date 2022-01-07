
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int __raw_writel (int,int ) ;
 unsigned long intc_get_dfl_prio_level () ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 int uimask ;

__attribute__((used)) static ssize_t
store_intc_userimask(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long level;

 level = simple_strtoul(buf, ((void*)0), 10);
 if (level >= intc_get_dfl_prio_level())
  return -EINVAL;

 __raw_writel(0xa5 << 24 | level << 4, uimask);

 return count;
}
