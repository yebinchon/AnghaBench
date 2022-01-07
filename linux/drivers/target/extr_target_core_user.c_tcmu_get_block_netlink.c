
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int sprintf (char*,char*,char*) ;
 scalar_t__ tcmu_netlink_blocked ;

__attribute__((used)) static int tcmu_get_block_netlink(char *buffer,
      const struct kernel_param *kp)
{
 return sprintf(buffer, "%s\n", tcmu_netlink_blocked ?
         "blocked" : "unblocked");
}
