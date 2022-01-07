
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_ring {int hw_dev; } ;


 int kfree (struct mite_ring*) ;
 int mite_free_dma_descs (struct mite_ring*) ;
 int put_device (int ) ;

void mite_free_ring(struct mite_ring *ring)
{
 if (ring) {
  mite_free_dma_descs(ring);
  put_device(ring->hw_dev);
  kfree(ring);
 }
}
