
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int shared_data_dmamap; int shared_data_dmat; } ;


 int ahc_dmamap_sync (struct ahc_softc*,int ,int ,int ,int,int) ;

__attribute__((used)) static void
ahc_sync_qoutfifo(struct ahc_softc *ahc, int op)
{
 ahc_dmamap_sync(ahc, ahc->shared_data_dmat, ahc->shared_data_dmamap,
             0, 256, op);
}
