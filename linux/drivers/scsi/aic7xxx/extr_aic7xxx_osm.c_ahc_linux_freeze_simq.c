
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int qfrozen; int host; } ;


 int ALL_CHANNELS ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQUEUE_REQ ;
 int CAM_TARGET_WILDCARD ;
 int ROLE_INITIATOR ;
 int SCB_LIST_NULL ;
 int ahc_lock (struct ahc_softc*,unsigned long*) ;
 int ahc_platform_abort_scbs (struct ahc_softc*,int ,int ,int ,int ,int ,int ) ;
 int ahc_unlock (struct ahc_softc*,unsigned long*) ;
 int scsi_block_requests (int ) ;

__attribute__((used)) static void
ahc_linux_freeze_simq(struct ahc_softc *ahc)
{
 unsigned long s;

 ahc_lock(ahc, &s);
 ahc->platform_data->qfrozen++;
 if (ahc->platform_data->qfrozen == 1) {
  scsi_block_requests(ahc->platform_data->host);


  ahc_platform_abort_scbs(ahc, CAM_TARGET_WILDCARD, ALL_CHANNELS,
     CAM_LUN_WILDCARD, SCB_LIST_NULL,
     ROLE_INITIATOR, CAM_REQUEUE_REQ);
 }
 ahc_unlock(ahc, &s);
}
