
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb_tailq {int dummy; } ;
struct scb {int flags; } ;
struct ahc_softc {scalar_t__ untagged_queue_lock; } ;


 int SCB_ACTIVE ;
 struct scb* TAILQ_FIRST (struct scb_tailq*) ;
 int ahc_queue_scb (struct ahc_softc*,struct scb*) ;

__attribute__((used)) static void
ahc_run_untagged_queue(struct ahc_softc *ahc, struct scb_tailq *queue)
{
 struct scb *scb;

 if (ahc->untagged_queue_lock != 0)
  return;

 if ((scb = TAILQ_FIRST(queue)) != ((void*)0)
  && (scb->flags & SCB_ACTIVE) == 0) {
  scb->flags |= SCB_ACTIVE;
  ahc_queue_scb(ahc, scb);
 }
}
