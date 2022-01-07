
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long BR_FLOOD ;
 unsigned long BR_LEARNING ;
 int EINVAL ;

__attribute__((used)) static int port_attr_br_flags_pre_set(struct net_device *netdev,
          struct switchdev_trans *trans,
          unsigned long flags)
{
 if (flags & ~(BR_LEARNING | BR_FLOOD))
  return -EINVAL;

 return 0;
}
