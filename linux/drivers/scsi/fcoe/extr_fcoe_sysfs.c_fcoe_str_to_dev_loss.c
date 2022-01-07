
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long UINT_MAX ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static int fcoe_str_to_dev_loss(const char *buf, unsigned long *val)
{
 int ret;

 ret = kstrtoul(buf, 0, val);
 if (ret)
  return -EINVAL;



 if (*val > UINT_MAX)
  return -EINVAL;

 return 0;
}
