
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int bnx2fc_dev_lock ;
 scalar_t__ bnx2fc_hba_lookup (struct net_device*) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static bool bnx2fc_match(struct net_device *netdev)
{
 struct net_device *phys_dev = netdev;

 mutex_lock(&bnx2fc_dev_lock);
 if (is_vlan_dev(netdev))
  phys_dev = vlan_dev_real_dev(netdev);

 if (bnx2fc_hba_lookup(phys_dev)) {
  mutex_unlock(&bnx2fc_dev_lock);
  return 1;
 }

 mutex_unlock(&bnx2fc_dev_lock);
 return 0;
}
