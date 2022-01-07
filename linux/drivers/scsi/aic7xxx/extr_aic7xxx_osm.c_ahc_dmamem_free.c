
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ahc_softc {int dev; } ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int maxsize; } ;


 int dma_free_coherent (int ,int ,void*,int ) ;

void
ahc_dmamem_free(struct ahc_softc *ahc, bus_dma_tag_t dmat,
  void* vaddr, bus_dmamap_t map)
{
 dma_free_coherent(ahc->dev, dmat->maxsize, vaddr, map);
}
