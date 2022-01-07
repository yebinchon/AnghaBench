
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;
typedef int bus_dma_tag_t ;


 int kfree (int ) ;

void
ahd_dma_tag_destroy(struct ahd_softc *ahd, bus_dma_tag_t dmat)
{
 kfree(dmat);
}
