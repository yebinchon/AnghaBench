
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct scsi_target {scalar_t__ channel; int id; TYPE_1__ dev; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_4__ {unsigned int period; unsigned int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_2__ goal; } ;
struct ahd_devinfo {int dummy; } ;
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;


 int AHD_SHOW_DV ;
 int AHD_SYNCRATE_MAX ;
 int AHD_SYNCRATE_ULTRA2 ;
 int AHD_TRANS_GOAL ;
 int FALSE ;
 unsigned int MSG_EXT_PPR_DT_REQ ;
 int ROLE_INITIATOR ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int ,int ,scalar_t__,int ) ;
 int ahd_debug ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,scalar_t__,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_find_syncrate (struct ahd_softc*,unsigned int*,unsigned int*,int ) ;
 int ahd_lock (struct ahd_softc*,unsigned long*) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,unsigned int,int,unsigned int,int ,int ) ;
 int ahd_unlock (struct ahd_softc*,unsigned long*) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static void ahd_linux_set_offset(struct scsi_target *starget, int offset)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ahd_softc *ahd = *((struct ahd_softc **)shost->hostdata);
 struct ahd_tmode_tstate *tstate;
 struct ahd_initiator_tinfo *tinfo
  = ahd_fetch_transinfo(ahd,
          starget->channel + 'A',
          shost->this_id, starget->id, &tstate);
 struct ahd_devinfo devinfo;
 unsigned int ppr_options = 0;
 unsigned int period = 0;
 unsigned int dt = ppr_options & MSG_EXT_PPR_DT_REQ;
 unsigned long flags;






 ahd_compile_devinfo(&devinfo, shost->this_id, starget->id, 0,
       starget->channel + 'A', ROLE_INITIATOR);
 if (offset != 0) {
  period = tinfo->goal.period;
  ppr_options = tinfo->goal.ppr_options;
  ahd_find_syncrate(ahd, &period, &ppr_options,
      dt ? AHD_SYNCRATE_MAX : AHD_SYNCRATE_ULTRA2);
 }

 ahd_lock(ahd, &flags);
 ahd_set_syncrate(ahd, &devinfo, period, offset, ppr_options,
    AHD_TRANS_GOAL, FALSE);
 ahd_unlock(ahd, &flags);
}
