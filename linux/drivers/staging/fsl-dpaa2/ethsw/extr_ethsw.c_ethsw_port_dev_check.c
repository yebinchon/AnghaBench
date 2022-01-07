
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int ethsw_port_ops ;

__attribute__((used)) static bool ethsw_port_dev_check(const struct net_device *netdev)
{
 return netdev->netdev_ops == &ethsw_port_ops;
}
