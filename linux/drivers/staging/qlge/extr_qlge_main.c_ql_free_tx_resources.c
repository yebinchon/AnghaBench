
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {int * q; int * wq_base; int wq_base_dma; int wq_size; } ;
struct ql_adapter {int pdev; } ;


 int kfree (int *) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void ql_free_tx_resources(struct ql_adapter *qdev,
     struct tx_ring *tx_ring)
{
 if (tx_ring->wq_base) {
  pci_free_consistent(qdev->pdev, tx_ring->wq_size,
        tx_ring->wq_base, tx_ring->wq_base_dma);
  tx_ring->wq_base = ((void*)0);
 }
 kfree(tx_ring->q);
 tx_ring->q = ((void*)0);
}
