
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scb {TYPE_3__* hscb; } ;
struct ahc_softc {TYPE_2__* next_queued_scb; int qinfifonext; int * qinfifo; } ;
struct TYPE_6__ {int next; int tag; } ;
struct TYPE_5__ {TYPE_1__* hscb; } ;
struct TYPE_4__ {int tag; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int NEXT_QUEUED_SCB ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;
 int ahc_sync_scb (struct ahc_softc*,struct scb*,int) ;

__attribute__((used)) static void
ahc_qinfifo_requeue(struct ahc_softc *ahc, struct scb *prev_scb,
      struct scb *scb)
{
 if (prev_scb == ((void*)0)) {
  ahc_outb(ahc, NEXT_QUEUED_SCB, scb->hscb->tag);
 } else {
  prev_scb->hscb->next = scb->hscb->tag;
  ahc_sync_scb(ahc, prev_scb,
        BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);
 }
 ahc->qinfifo[ahc->qinfifonext++] = scb->hscb->tag;
 scb->hscb->next = ahc->next_queued_scb->hscb->tag;
 ahc_sync_scb(ahc, scb, BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);
}
