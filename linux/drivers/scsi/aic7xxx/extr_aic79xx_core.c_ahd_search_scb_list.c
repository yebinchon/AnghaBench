
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct scb {int flags; } ;
struct TYPE_2__ {scalar_t__ numscbs; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;
typedef int role_t ;
typedef int ahd_search_action ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 int AHD_SCB_MAX ;
 int CMDS_PENDING ;
 scalar_t__ SCBID_IS_NULL (scalar_t__) ;
 int SCB_ACTIVE ;
 scalar_t__ SCB_LIST_NULL ;
 int SCB_NEXT ;




 int ahd_done_with_status (struct ahd_softc*,struct scb*,int ) ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 scalar_t__ ahd_inw (struct ahd_softc*,int ) ;
 scalar_t__ ahd_inw_scbram (struct ahd_softc*,int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,scalar_t__) ;
 scalar_t__ ahd_match_scb (struct ahd_softc*,struct scb*,int,char,int,scalar_t__,int ) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outw (struct ahd_softc*,int ,scalar_t__) ;
 int ahd_rem_wscb (struct ahd_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ahd_set_scbptr (struct ahd_softc*,scalar_t__) ;
 int panic (char*) ;
 int printk (char*,...) ;

__attribute__((used)) static int
ahd_search_scb_list(struct ahd_softc *ahd, int target, char channel,
      int lun, u_int tag, role_t role, uint32_t status,
      ahd_search_action action, u_int *list_head,
      u_int *list_tail, u_int tid)
{
 struct scb *scb;
 u_int scbid;
 u_int next;
 u_int prev;
 int found;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 found = 0;
 prev = SCB_LIST_NULL;
 next = *list_head;
 *list_tail = SCB_LIST_NULL;
 for (scbid = next; !SCBID_IS_NULL(scbid); scbid = next) {
  if (scbid >= ahd->scb_data.numscbs) {
   printk("%s:SCB List inconsistency. "
          "SCB == 0x%x, yet numscbs == 0x%x.",
          ahd_name(ahd), scbid, ahd->scb_data.numscbs);
   ahd_dump_card_state(ahd);
   panic("for safety");
  }
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printk("%s: SCB = %d Not Active!\n",
          ahd_name(ahd), scbid);
   panic("Waiting List traversal\n");
  }
  ahd_set_scbptr(ahd, scbid);
  *list_tail = scbid;
  next = ahd_inw_scbram(ahd, SCB_NEXT);
  if (ahd_match_scb(ahd, scb, target, channel,
      lun, SCB_LIST_NULL, role) == 0) {
   prev = scbid;
   continue;
  }
  found++;
  switch (action) {
  case 131:
   if ((scb->flags & SCB_ACTIVE) == 0)
    printk("Inactive SCB in Waiting List\n");
   ahd_done_with_status(ahd, scb, status);

  case 128:
   ahd_rem_wscb(ahd, scbid, prev, next, tid);
   *list_tail = prev;
   if (SCBID_IS_NULL(prev))
    *list_head = next;
   break;
  case 129:
   printk("0x%x ", scbid);

  case 130:
   prev = scbid;
   break;
  }
  if (found > AHD_SCB_MAX)
   panic("SCB LIST LOOP");
 }
 if (action == 131
  || action == 128)
  ahd_outw(ahd, CMDS_PENDING, ahd_inw(ahd, CMDS_PENDING) - found);
 return (found);
}
