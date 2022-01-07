
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct scb {TYPE_4__* hscb; TYPE_3__* io_ctx; } ;
struct ahc_softc {int dummy; } ;
typedef scalar_t__ role_t ;
struct TYPE_8__ {scalar_t__ tag; } ;
struct TYPE_6__ {scalar_t__ tag_id; } ;
struct TYPE_5__ {int func_code; } ;
struct TYPE_7__ {TYPE_2__ csio; TYPE_1__ ccb_h; } ;


 char ALL_CHANNELS ;
 int CAM_LUN_WILDCARD ;
 int CAM_TARGET_WILDCARD ;
 scalar_t__ ROLE_INITIATOR ;
 scalar_t__ ROLE_TARGET ;
 char SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 scalar_t__ SCB_LIST_NULL ;
 int XPT_FC_GROUP (int ) ;
 int XPT_FC_GROUP_TMODE ;

int
ahc_match_scb(struct ahc_softc *ahc, struct scb *scb, int target,
       char channel, int lun, u_int tag, role_t role)
{
 int targ = SCB_GET_TARGET(ahc, scb);
 char chan = SCB_GET_CHANNEL(ahc, scb);
 int slun = SCB_GET_LUN(scb);
 int match;

 match = ((chan == channel) || (channel == ALL_CHANNELS));
 if (match != 0)
  match = ((targ == target) || (target == CAM_TARGET_WILDCARD));
 if (match != 0)
  match = ((lun == slun) || (lun == CAM_LUN_WILDCARD));
 if (match != 0) {
  match = ((tag == scb->hscb->tag) || (tag == SCB_LIST_NULL));

 }

 return match;
}
