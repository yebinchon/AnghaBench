
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {scalar_t__ channel; int id; TYPE_1__ dev; } ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int dummy; } ;
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;


 int AHD_TRANS_GOAL ;
 int FALSE ;
 int ROLE_INITIATOR ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int ,int ,scalar_t__,int ) ;
 int ahd_lock (struct ahd_softc*,unsigned long*) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int,int ,int ) ;
 int ahd_unlock (struct ahd_softc*,unsigned long*) ;
 struct Scsi_Host* dev_to_shost (int ) ;

__attribute__((used)) static void ahd_linux_set_width(struct scsi_target *starget, int width)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ahd_softc *ahd = *((struct ahd_softc **)shost->hostdata);
 struct ahd_devinfo devinfo;
 unsigned long flags;

 ahd_compile_devinfo(&devinfo, shost->this_id, starget->id, 0,
       starget->channel + 'A', ROLE_INITIATOR);
 ahd_lock(ahd, &flags);
 ahd_set_width(ahd, &devinfo, width, AHD_TRANS_GOAL, FALSE);
 ahd_unlock(ahd, &flags);
}
