
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

 int port_get_stats (struct net_device*,void*) ;

__attribute__((used)) static int port_get_offload_stats(int attr_id,
      const struct net_device *netdev,
      void *sp)
{
 switch (attr_id) {
 case 128:
  port_get_stats((struct net_device *)netdev, sp);
  return 0;
 }

 return -EINVAL;
}
