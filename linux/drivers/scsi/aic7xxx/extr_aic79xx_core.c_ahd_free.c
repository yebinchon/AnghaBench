
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmamap; } ;
struct ahd_tmode_tstate {int init_level; struct ahd_tmode_tstate* saved_stack; struct ahd_tmode_tstate* seep_config; struct ahd_tmode_tstate* name; struct ahd_tmode_tstate* black_hole; int path; struct ahd_tmode_tstate** enabled_luns; struct ahd_tmode_tstate** enabled_targets; int shared_data_dmat; TYPE_1__ shared_data_map; int qoutfifo; } ;
struct ahd_tmode_lstate {int init_level; struct ahd_tmode_lstate* saved_stack; struct ahd_tmode_lstate* seep_config; struct ahd_tmode_lstate* name; struct ahd_tmode_lstate* black_hole; int path; struct ahd_tmode_lstate** enabled_luns; struct ahd_tmode_lstate** enabled_targets; int shared_data_dmat; TYPE_1__ shared_data_map; int qoutfifo; } ;
struct ahd_softc {int init_level; struct ahd_softc* saved_stack; struct ahd_softc* seep_config; struct ahd_softc* name; struct ahd_softc* black_hole; int path; struct ahd_softc** enabled_luns; struct ahd_softc** enabled_targets; int shared_data_dmat; TYPE_1__ shared_data_map; int qoutfifo; } ;


 int AHD_NUM_LUNS ;
 int AHD_NUM_TARGETS ;
 int ahd_dma_tag_destroy (struct ahd_tmode_tstate*,int ) ;
 int ahd_dmamap_destroy (struct ahd_tmode_tstate*,int ,int ) ;
 int ahd_dmamap_unload (struct ahd_tmode_tstate*,int ,int ) ;
 int ahd_dmamem_free (struct ahd_tmode_tstate*,int ,int ,int ) ;
 int ahd_fini_scbdata (struct ahd_tmode_tstate*) ;
 int ahd_platform_free (struct ahd_tmode_tstate*) ;
 int ahd_shutdown (struct ahd_tmode_tstate*) ;
 int kfree (struct ahd_tmode_tstate*) ;
 int xpt_free_path (int ) ;

void
ahd_free(struct ahd_softc *ahd)
{
 int i;

 switch (ahd->init_level) {
 default:
 case 5:
  ahd_shutdown(ahd);

 case 4:
  ahd_dmamap_unload(ahd, ahd->shared_data_dmat,
      ahd->shared_data_map.dmamap);

 case 3:
  ahd_dmamem_free(ahd, ahd->shared_data_dmat, ahd->qoutfifo,
    ahd->shared_data_map.dmamap);
  ahd_dmamap_destroy(ahd, ahd->shared_data_dmat,
       ahd->shared_data_map.dmamap);

 case 2:
  ahd_dma_tag_destroy(ahd, ahd->shared_data_dmat);
 case 1:
  break;
 case 0:
  break;
 }

 ahd_platform_free(ahd);
 ahd_fini_scbdata(ahd);
 for (i = 0; i < AHD_NUM_TARGETS; i++) {
  struct ahd_tmode_tstate *tstate;

  tstate = ahd->enabled_targets[i];
  if (tstate != ((void*)0)) {
   kfree(tstate);
  }
 }






 if (ahd->name != ((void*)0))
  kfree(ahd->name);
 if (ahd->seep_config != ((void*)0))
  kfree(ahd->seep_config);
 if (ahd->saved_stack != ((void*)0))
  kfree(ahd->saved_stack);

 kfree(ahd);

 return;
}
