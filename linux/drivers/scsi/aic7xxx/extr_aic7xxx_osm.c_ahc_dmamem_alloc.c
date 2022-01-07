
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ahc_softc {int dev; } ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int maxsize; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 void* dma_alloc_coherent (int ,int ,int *,int ) ;

int
ahc_dmamem_alloc(struct ahc_softc *ahc, bus_dma_tag_t dmat, void** vaddr,
   int flags, bus_dmamap_t *mapp)
{

 *vaddr = dma_alloc_coherent(ahc->dev, dmat->maxsize, mapp, GFP_ATOMIC);
 if (*vaddr == ((void*)0))
  return ENOMEM;
 return 0;
}
