
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int __be32 ;


 struct net_device* __ip_dev_find (int *,int ,int) ;
 struct net_device* cxgbit_get_real_dev (struct net_device*) ;
 int init_net ;

__attribute__((used)) static struct net_device *cxgbit_ipv4_netdev(__be32 saddr)
{
 struct net_device *ndev;

 ndev = __ip_dev_find(&init_net, saddr, 0);
 if (!ndev)
  return ((void*)0);

 return cxgbit_get_real_dev(ndev);
}
