
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_target {int dummy; } ;
struct ahd_softc {scalar_t__* tags; TYPE_2__* platform_data; TYPE_1__* bshs; } ;
struct TYPE_4__ {scalar_t__ irq; scalar_t__ host; int mem_busaddr; struct scsi_target** starget; } ;
struct TYPE_3__ {scalar_t__ ioport; int * maddr; } ;


 scalar_t__ AHD_LINUX_NOIRQ ;
 int AHD_NUM_TARGETS ;
 scalar_t__ BUS_SPACE_MEMIO ;
 scalar_t__ BUS_SPACE_PIO ;
 int free_irq (scalar_t__,struct ahd_softc*) ;
 int iounmap (int *) ;
 int kfree (TYPE_2__*) ;
 int release_mem_region (int ,int) ;
 int release_region (scalar_t__,int) ;
 int scsi_host_put (scalar_t__) ;

void
ahd_platform_free(struct ahd_softc *ahd)
{
 struct scsi_target *starget;
 int i;

 if (ahd->platform_data != ((void*)0)) {

  for (i = 0; i < AHD_NUM_TARGETS; i++) {
   starget = ahd->platform_data->starget[i];
   if (starget != ((void*)0)) {
    ahd->platform_data->starget[i] = ((void*)0);
   }
  }

  if (ahd->platform_data->irq != AHD_LINUX_NOIRQ)
   free_irq(ahd->platform_data->irq, ahd);
  if (ahd->tags[0] == BUS_SPACE_PIO
   && ahd->bshs[0].ioport != 0)
   release_region(ahd->bshs[0].ioport, 256);
  if (ahd->tags[1] == BUS_SPACE_PIO
   && ahd->bshs[1].ioport != 0)
   release_region(ahd->bshs[1].ioport, 256);
  if (ahd->tags[0] == BUS_SPACE_MEMIO
   && ahd->bshs[0].maddr != ((void*)0)) {
   iounmap(ahd->bshs[0].maddr);
   release_mem_region(ahd->platform_data->mem_busaddr,
        0x1000);
  }
  if (ahd->platform_data->host)
   scsi_host_put(ahd->platform_data->host);

  kfree(ahd->platform_data);
 }
}
