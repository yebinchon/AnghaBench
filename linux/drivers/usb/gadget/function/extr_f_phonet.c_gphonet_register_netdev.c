
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int register_netdev (struct net_device*) ;

int gphonet_register_netdev(struct net_device *net)
{
 int status;

 status = register_netdev(net);
 if (status)
  free_netdev(net);

 return status;
}
