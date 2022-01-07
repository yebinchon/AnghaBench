
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int * cq_base; int cq_base_dma; int cq_size; int * lbq; int * lbq_base; int lbq_base_dma; int lbq_size; int * sbq; int * sbq_base; int sbq_base_dma; int sbq_size; } ;
struct ql_adapter {int pdev; } ;


 int kfree (int *) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void ql_free_rx_resources(struct ql_adapter *qdev,
     struct rx_ring *rx_ring)
{

 if (rx_ring->sbq_base) {
  pci_free_consistent(qdev->pdev,
        rx_ring->sbq_size,
        rx_ring->sbq_base, rx_ring->sbq_base_dma);
  rx_ring->sbq_base = ((void*)0);
 }


 kfree(rx_ring->sbq);
 rx_ring->sbq = ((void*)0);


 if (rx_ring->lbq_base) {
  pci_free_consistent(qdev->pdev,
        rx_ring->lbq_size,
        rx_ring->lbq_base, rx_ring->lbq_base_dma);
  rx_ring->lbq_base = ((void*)0);
 }


 kfree(rx_ring->lbq);
 rx_ring->lbq = ((void*)0);


 if (rx_ring->cq_base) {
  pci_free_consistent(qdev->pdev,
        rx_ring->cq_size,
        rx_ring->cq_base, rx_ring->cq_base_dma);
  rx_ring->cq_base = ((void*)0);
 }
}
