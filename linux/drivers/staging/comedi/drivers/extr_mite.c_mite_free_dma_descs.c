
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_ring {int n_links; int dma_addr; struct mite_dma_desc* descs; int hw_dev; } ;
struct mite_dma_desc {int dummy; } ;


 int dma_free_coherent (int ,int,struct mite_dma_desc*,int ) ;

__attribute__((used)) static void mite_free_dma_descs(struct mite_ring *ring)
{
 struct mite_dma_desc *descs = ring->descs;

 if (descs) {
  dma_free_coherent(ring->hw_dev,
      ring->n_links * sizeof(*descs),
      descs, ring->dma_addr);
  ring->descs = ((void*)0);
  ring->dma_addr = 0;
  ring->n_links = 0;
 }
}
