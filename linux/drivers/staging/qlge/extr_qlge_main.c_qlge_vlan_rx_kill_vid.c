
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql_adapter {int active_vlans; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int SEM_MAC_ADDR_MASK ;
 int __qlge_vlan_rx_kill_vid (struct ql_adapter*,int ) ;
 int clear_bit (int ,int ) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;

__attribute__((used)) static int qlge_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto, u16 vid)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 int status;
 int err;

 status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 if (status)
  return status;

 err = __qlge_vlan_rx_kill_vid(qdev, vid);
 clear_bit(vid, qdev->active_vlans);

 ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);

 return err;
}
