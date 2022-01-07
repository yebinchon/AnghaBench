
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_ring {size_t hop; int size; int work; TYPE_2__* nhi; scalar_t__ descriptors_dma; int * descriptors; scalar_t__ running; scalar_t__ is_tx; } ;
struct TYPE_4__ {TYPE_1__* pdev; int lock; int ** rx_rings; int ** tx_rings; } ;
struct TYPE_3__ {int dev; } ;


 int RING_TYPE (struct tb_ring*) ;
 int dev_WARN (int *,char*,int ,size_t) ;
 int dev_dbg (int *,char*,int ,size_t) ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 int flush_work (int *) ;
 int kfree (struct tb_ring*) ;
 int ring_release_msix (struct tb_ring*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void tb_ring_free(struct tb_ring *ring)
{
 spin_lock_irq(&ring->nhi->lock);




 if (ring->is_tx)
  ring->nhi->tx_rings[ring->hop] = ((void*)0);
 else
  ring->nhi->rx_rings[ring->hop] = ((void*)0);

 if (ring->running) {
  dev_WARN(&ring->nhi->pdev->dev, "%s %d still running\n",
    RING_TYPE(ring), ring->hop);
 }
 spin_unlock_irq(&ring->nhi->lock);

 ring_release_msix(ring);

 dma_free_coherent(&ring->nhi->pdev->dev,
     ring->size * sizeof(*ring->descriptors),
     ring->descriptors, ring->descriptors_dma);

 ring->descriptors = ((void*)0);
 ring->descriptors_dma = 0;


 dev_dbg(&ring->nhi->pdev->dev, "freeing %s %d\n", RING_TYPE(ring),
  ring->hop);






 flush_work(&ring->work);
 kfree(ring);
}
