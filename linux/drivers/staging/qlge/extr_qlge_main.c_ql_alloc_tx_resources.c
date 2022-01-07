
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_desc {int dummy; } ;
struct tx_ring {int wq_base_dma; int * wq_base; int wq_size; int * q; int wq_len; } ;
struct ql_adapter {int ndev; int pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WQ_ADDR_ALIGN ;
 int ifup ;
 int * kmalloc_array (int ,int,int ) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int * pci_alloc_consistent (int ,int ,int*) ;
 int pci_free_consistent (int ,int ,int *,int) ;

__attribute__((used)) static int ql_alloc_tx_resources(struct ql_adapter *qdev,
     struct tx_ring *tx_ring)
{
 tx_ring->wq_base =
     pci_alloc_consistent(qdev->pdev, tx_ring->wq_size,
     &tx_ring->wq_base_dma);

 if ((tx_ring->wq_base == ((void*)0)) ||
     tx_ring->wq_base_dma & WQ_ADDR_ALIGN)
  goto pci_alloc_err;

 tx_ring->q =
     kmalloc_array(tx_ring->wq_len, sizeof(struct tx_ring_desc),
     GFP_KERNEL);
 if (tx_ring->q == ((void*)0))
  goto err;

 return 0;
err:
 pci_free_consistent(qdev->pdev, tx_ring->wq_size,
       tx_ring->wq_base, tx_ring->wq_base_dma);
 tx_ring->wq_base = ((void*)0);
pci_alloc_err:
 netif_err(qdev, ifup, qdev->ndev, "tx_ring alloc failed.\n");
 return -ENOMEM;
}
