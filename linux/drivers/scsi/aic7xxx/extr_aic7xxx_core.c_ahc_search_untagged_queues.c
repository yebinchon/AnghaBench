
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scb_tailq {int dummy; } ;
struct scb {int flags; int * io_ctx; } ;
struct ahc_softc {int flags; struct scb_tailq* untagged_queues; } ;
typedef int cam_status ;
typedef int ahc_search_action ;
typedef int * ahc_io_ctx_t ;
struct TYPE_2__ {int tqe; } ;


 int AHC_SCB_BTT ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 int CAM_TARGET_WILDCARD ;
 int ROLE_INITIATOR ;
 int SCB_ACTIVE ;
 int SCB_LIST_NULL ;
 int SCB_UNTAGGEDQ ;



 struct scb* TAILQ_FIRST (struct scb_tailq*) ;
 struct scb* TAILQ_NEXT (struct scb*,int ) ;
 int TAILQ_REMOVE (struct scb_tailq*,struct scb*,int ) ;
 int ahc_done (struct ahc_softc*,struct scb*) ;
 int ahc_freeze_scb (struct scb*) ;
 int ahc_freeze_untagged_queues (struct ahc_softc*) ;
 int ahc_get_transaction_status (struct scb*) ;
 scalar_t__ ahc_match_scb (struct ahc_softc*,struct scb*,int,char,int,int ,int ) ;
 int ahc_release_untagged_queues (struct ahc_softc*) ;
 int ahc_set_transaction_status (struct scb*,int ) ;
 TYPE_1__ links ;
 int printk (char*) ;

int
ahc_search_untagged_queues(struct ahc_softc *ahc, ahc_io_ctx_t ctx,
      int target, char channel, int lun, uint32_t status,
      ahc_search_action action)
{
 struct scb *scb;
 int maxtarget;
 int found;
 int i;

 if (action == 130) {




  ahc_freeze_untagged_queues(ahc);
 }

 found = 0;
 i = 0;
 if ((ahc->flags & AHC_SCB_BTT) == 0) {

  maxtarget = 16;
  if (target != CAM_TARGET_WILDCARD) {

   i = target;
   if (channel == 'B')
    i += 8;
   maxtarget = i + 1;
  }
 } else {
  maxtarget = 0;
 }

 for (; i < maxtarget; i++) {
  struct scb_tailq *untagged_q;
  struct scb *next_scb;

  untagged_q = &(ahc->untagged_queues[i]);
  next_scb = TAILQ_FIRST(untagged_q);
  while (next_scb != ((void*)0)) {

   scb = next_scb;
   next_scb = TAILQ_NEXT(scb, links.tqe);
   if ((scb->flags & SCB_ACTIVE) != 0)
    continue;

   if (ahc_match_scb(ahc, scb, target, channel, lun,
       SCB_LIST_NULL, ROLE_INITIATOR) == 0
    || (ctx != ((void*)0) && ctx != scb->io_ctx))
    continue;




   found++;
   switch (action) {
   case 130:
   {
    cam_status ostat;
    cam_status cstat;

    ostat = ahc_get_transaction_status(scb);
    if (ostat == CAM_REQ_INPROG)
     ahc_set_transaction_status(scb, status);
    cstat = ahc_get_transaction_status(scb);
    if (cstat != CAM_REQ_CMP)
     ahc_freeze_scb(scb);
    if ((scb->flags & SCB_ACTIVE) == 0)
     printk("Inactive SCB in untaggedQ\n");
    ahc_done(ahc, scb);
    break;
   }
   case 128:
    scb->flags &= ~SCB_UNTAGGEDQ;
    TAILQ_REMOVE(untagged_q, scb, links.tqe);
    break;
   case 129:
    break;
   }
  }
 }

 if (action == 130)
  ahc_release_untagged_queues(ahc);
 return (found);
}
