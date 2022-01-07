
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kernel_param {int dummy; } ;


 int EINVAL ;
 int kstrtou8 (char const*,int ,int*) ;
 int pr_err (char*,int) ;
 int tcmu_netlink_blocked ;

__attribute__((used)) static int tcmu_set_block_netlink(const char *str,
      const struct kernel_param *kp)
{
 int ret;
 u8 val;

 ret = kstrtou8(str, 0, &val);
 if (ret < 0)
  return ret;

 if (val > 1) {
  pr_err("Invalid block netlink value %u\n", val);
  return -EINVAL;
 }

 tcmu_netlink_blocked = val;
 return 0;
}
