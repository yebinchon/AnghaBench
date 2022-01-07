
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct ql_adapter {int pdev; int ndev; } ;


 int CFG ;
 int CFG_LCQ ;
 int CFG_LR ;
 int CFG_LRQ ;
 int CFG_Q_MASK ;
 int CFG_Q_SHIFT ;
 int ENOMEM ;
 int ICB_H ;
 int ICB_L ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int SEM_ICB_MASK ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 scalar_t__ pci_dma_mapping_error (int ,int) ;
 int pci_map_single (int ,void*,int,int) ;
 int pci_unmap_single (int ,int,int,int) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_wait_cfg (struct ql_adapter*,int) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

int ql_write_cfg(struct ql_adapter *qdev, void *ptr, int size, u32 bit,
   u16 q_id)
{
 u64 map;
 int status = 0;
 int direction;
 u32 mask;
 u32 value;

 direction =
     (bit & (CFG_LRQ | CFG_LR | CFG_LCQ)) ? PCI_DMA_TODEVICE :
     PCI_DMA_FROMDEVICE;

 map = pci_map_single(qdev->pdev, ptr, size, direction);
 if (pci_dma_mapping_error(qdev->pdev, map)) {
  netif_err(qdev, ifup, qdev->ndev, "Couldn't map DMA area.\n");
  return -ENOMEM;
 }

 status = ql_sem_spinlock(qdev, SEM_ICB_MASK);
 if (status)
  return status;

 status = ql_wait_cfg(qdev, bit);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev,
     "Timed out waiting for CFG to come ready.\n");
  goto exit;
 }

 ql_write32(qdev, ICB_L, (u32) map);
 ql_write32(qdev, ICB_H, (u32) (map >> 32));

 mask = CFG_Q_MASK | (bit << 16);
 value = bit | (q_id << CFG_Q_SHIFT);
 ql_write32(qdev, CFG, (mask | value));




 status = ql_wait_cfg(qdev, bit);
exit:
 ql_sem_unlock(qdev, SEM_ICB_MASK);
 pci_unmap_single(qdev->pdev, map, size, direction);
 return status;
}
