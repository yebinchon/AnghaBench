
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct ql_adapter {int func; int ndev; scalar_t__ current_mac_addr; } ;
struct net_device {scalar_t__ dev_addr; int addr_len; } ;


 int EADDRNOTAVAIL ;
 int MAC_ADDR_TYPE_CAM_MAC ;
 int MAX_CQ ;
 int SEM_MAC_ADDR_MASK ;
 int hw ;
 int is_valid_ether_addr (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_set_mac_addr_reg (struct ql_adapter*,int *,int ,int) ;

__attribute__((used)) static int qlge_set_mac_address(struct net_device *ndev, void *p)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 struct sockaddr *addr = p;
 int status;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;
 memcpy(ndev->dev_addr, addr->sa_data, ndev->addr_len);

 memcpy(qdev->current_mac_addr, ndev->dev_addr, ndev->addr_len);

 status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 if (status)
  return status;
 status = ql_set_mac_addr_reg(qdev, (u8 *) ndev->dev_addr,
   MAC_ADDR_TYPE_CAM_MAC, qdev->func * MAX_CQ);
 if (status)
  netif_err(qdev, hw, qdev->ndev, "Failed to load MAC address.\n");
 ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
 return status;
}
