
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct scb {scalar_t__ sg_count; TYPE_1__* hscb; } ;
struct ahd_softc {int qinfifonext; int * qinfifo; } ;
struct TYPE_2__ {int datacnt; int hscb_busaddr; int scsiid; int dataptr; } ;


 size_t AHD_QIN_WRAP (int ) ;
 int AHD_SHOW_QUEUE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ SCBID_IS_NULL (int ) ;
 int SCB_GET_TAG (struct scb*) ;
 int ahd_debug ;
 int ahd_le32toh (int ) ;
 int ahd_le64toh (int ) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_set_hnscb_qoff (struct ahd_softc*,int ) ;
 int ahd_setup_data_scb (struct ahd_softc*,struct scb*) ;
 int ahd_setup_noxfer_scb (struct ahd_softc*,struct scb*) ;
 int ahd_setup_scb_common (struct ahd_softc*,struct scb*) ;
 int ahd_swap_with_next_hscb (struct ahd_softc*,struct scb*) ;
 int ahd_sync_scb (struct ahd_softc*,struct scb*,int) ;
 int panic (char*,int ) ;
 int printk (char*,int ,int ,int ,int ,int ,int ,int ) ;

void
ahd_queue_scb(struct ahd_softc *ahd, struct scb *scb)
{
 ahd_swap_with_next_hscb(ahd, scb);

 if (SCBID_IS_NULL(SCB_GET_TAG(scb)))
  panic("Attempt to queue invalid SCB tag %x\n",
        SCB_GET_TAG(scb));




 ahd->qinfifo[AHD_QIN_WRAP(ahd->qinfifonext)] = SCB_GET_TAG(scb);
 ahd->qinfifonext++;

 if (scb->sg_count != 0)
  ahd_setup_data_scb(ahd, scb);
 else
  ahd_setup_noxfer_scb(ahd, scb);
 ahd_setup_scb_common(ahd, scb);





 ahd_sync_scb(ahd, scb, BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);
 ahd_set_hnscb_qoff(ahd, ahd->qinfifonext);
}
