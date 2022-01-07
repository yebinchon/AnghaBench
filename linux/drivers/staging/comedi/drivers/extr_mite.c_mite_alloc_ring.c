
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_ring {scalar_t__ dma_addr; int * descs; scalar_t__ n_links; int hw_dev; } ;
struct mite {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int get_device (int *) ;
 int kfree (struct mite_ring*) ;
 struct mite_ring* kmalloc (int,int ) ;

struct mite_ring *mite_alloc_ring(struct mite *mite)
{
 struct mite_ring *ring;

 ring = kmalloc(sizeof(*ring), GFP_KERNEL);
 if (!ring)
  return ((void*)0);
 ring->hw_dev = get_device(&mite->pcidev->dev);
 if (!ring->hw_dev) {
  kfree(ring);
  return ((void*)0);
 }
 ring->n_links = 0;
 ring->descs = ((void*)0);
 ring->dma_addr = 0;
 return ring;
}
