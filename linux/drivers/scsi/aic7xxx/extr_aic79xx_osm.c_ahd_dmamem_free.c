
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ahd_softc {int dev_softc; } ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {int maxsize; } ;


 int pci_free_consistent (int ,int ,void*,int ) ;

void
ahd_dmamem_free(struct ahd_softc *ahd, bus_dma_tag_t dmat,
  void* vaddr, bus_dmamap_t map)
{
 pci_free_consistent(ahd->dev_softc, dmat->maxsize,
       vaddr, map);
}
