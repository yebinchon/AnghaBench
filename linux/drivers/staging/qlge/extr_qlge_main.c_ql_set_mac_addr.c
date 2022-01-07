
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ql_adapter {char* current_mac_addr; int func; int ndev; } ;


 int ETH_ALEN ;
 int KERN_DEBUG ;
 int MAC_ADDR_TYPE_CAM_MAC ;
 int MAX_CQ ;
 int SEM_MAC_ADDR_MASK ;
 int eth_zero_addr (char*) ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*,...) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_set_mac_addr_reg (struct ql_adapter*,int *,int ,int) ;

__attribute__((used)) static int ql_set_mac_addr(struct ql_adapter *qdev, int set)
{
 int status;
 char zero_mac_addr[ETH_ALEN];
 char *addr;

 if (set) {
  addr = &qdev->current_mac_addr[0];
  netif_printk(qdev, ifup, KERN_DEBUG, qdev->ndev,
        "Set Mac addr %pM\n", addr);
 } else {
  eth_zero_addr(zero_mac_addr);
  addr = &zero_mac_addr[0];
  netif_printk(qdev, ifup, KERN_DEBUG, qdev->ndev,
        "Clearing MAC address\n");
 }
 status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 if (status)
  return status;
 status = ql_set_mac_addr_reg(qdev, (u8 *) addr,
   MAC_ADDR_TYPE_CAM_MAC, qdev->func * MAX_CQ);
 ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
 if (status)
  netif_err(qdev, ifup, qdev->ndev,
     "Failed to init mac address.\n");
 return status;
}
