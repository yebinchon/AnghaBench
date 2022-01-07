
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int name; } ;


 int IFF_BONDING ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int pr_err (char*,int ) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static struct net_device *cxgbit_get_real_dev(struct net_device *ndev)
{
 if (ndev->priv_flags & IFF_BONDING) {
  pr_err("Bond devices are not supported. Interface:%s\n",
         ndev->name);
  return ((void*)0);
 }

 if (is_vlan_dev(ndev))
  return vlan_dev_real_dev(ndev);

 return ndev;
}
