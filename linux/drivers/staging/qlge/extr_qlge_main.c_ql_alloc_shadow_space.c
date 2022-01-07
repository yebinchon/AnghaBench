
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int rx_ring_shadow_reg_dma; int * rx_ring_shadow_reg_area; int pdev; int ndev; int * tx_ring_shadow_reg_area; int tx_ring_shadow_reg_dma; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 void* pci_zalloc_consistent (int ,int ,int *) ;

__attribute__((used)) static int ql_alloc_shadow_space(struct ql_adapter *qdev)
{
 qdev->rx_ring_shadow_reg_area =
  pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
          &qdev->rx_ring_shadow_reg_dma);
 if (qdev->rx_ring_shadow_reg_area == ((void*)0)) {
  netif_err(qdev, ifup, qdev->ndev,
     "Allocation of RX shadow space failed.\n");
  return -ENOMEM;
 }

 qdev->tx_ring_shadow_reg_area =
  pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
          &qdev->tx_ring_shadow_reg_dma);
 if (qdev->tx_ring_shadow_reg_area == ((void*)0)) {
  netif_err(qdev, ifup, qdev->ndev,
     "Allocation of TX shadow space failed.\n");
  goto err_wqp_sh_area;
 }
 return 0;

err_wqp_sh_area:
 pci_free_consistent(qdev->pdev,
       PAGE_SIZE,
       qdev->rx_ring_shadow_reg_area,
       qdev->rx_ring_shadow_reg_dma);
 return -ENOMEM;
}
