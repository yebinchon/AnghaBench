
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmamap; } ;
struct ahd_softc {TYPE_1__ shared_data_map; int shared_data_dmat; } ;
struct ahd_completion {int dummy; } ;


 int AHD_SCB_MAX ;
 int ahd_dmamap_sync (struct ahd_softc*,int ,int ,int ,int,int) ;

__attribute__((used)) static void
ahd_sync_qoutfifo(struct ahd_softc *ahd, int op)
{
 ahd_dmamap_sync(ahd, ahd->shared_data_dmat, ahd->shared_data_map.dmamap,
             0,
          AHD_SCB_MAX * sizeof(struct ahd_completion), op);
}
