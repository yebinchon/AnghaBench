
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {scalar_t__ channel; int id; TYPE_1__ dev; } ;
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int dummy; } ;
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;


 int AHC_TRANS_GOAL ;
 int FALSE ;
 int ROLE_INITIATOR ;
 int ahc_compile_devinfo (struct ahc_devinfo*,int ,int ,int ,scalar_t__,int ) ;
 int ahc_lock (struct ahc_softc*,unsigned long*) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int,int ,int ) ;
 int ahc_unlock (struct ahc_softc*,unsigned long*) ;
 struct Scsi_Host* dev_to_shost (int ) ;

__attribute__((used)) static void ahc_linux_set_width(struct scsi_target *starget, int width)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ahc_softc *ahc = *((struct ahc_softc **)shost->hostdata);
 struct ahc_devinfo devinfo;
 unsigned long flags;

 ahc_compile_devinfo(&devinfo, shost->this_id, starget->id, 0,
       starget->channel + 'A', ROLE_INITIATOR);
 ahc_lock(ahc, &flags);
 ahc_set_width(ahc, &devinfo, width, AHC_TRANS_GOAL, FALSE);
 ahc_unlock(ahc, &flags);
}
