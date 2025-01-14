
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_control {int js_period; int flags; int drv_flags; } ;
struct scsi_ctrl_blk {int target; scalar_t__ opcode; int flags; int next_state; int hastat; int srb; scalar_t__ tagmsg; } ;
struct initio_host {int jsstatus0; int phase; int jsint; int scsi_id; scalar_t__ addr; struct target_control* targets; struct scsi_ctrl_blk* active; void* jsstatus1; } ;


 scalar_t__ AbortCmd ;
 scalar_t__ BusDevRst ;
 scalar_t__ ExecSCSI ;
 int SCF_POLL ;
 int TCF_DRV_EN_TAG ;
 int TCF_NO_SYNC_NEGO ;
 int TCF_NO_WDTR ;
 int TCF_SYNC_DONE ;
 int TCF_WDTR_DONE ;
 int TSS_BUS_SERV ;
 int TSS_DISC_INT ;
 int TSS_FUNC_COMP ;
 int TSS_INT_PENDING ;
 int TSS_PH_MASK ;
 int TSS_RESEL_INT ;
 int TSS_SCSIRST_INT ;
 int TSS_SEL_TIMEOUT ;
 scalar_t__ TUL_SInt ;
 scalar_t__ TUL_SPeriod ;
 scalar_t__ TUL_SScsiId ;
 scalar_t__ TUL_SStatus0 ;
 scalar_t__ TUL_SStatus1 ;
 void* inb (scalar_t__) ;
 scalar_t__ initio_abort_srb (struct initio_host*,int ) ;
 int initio_append_done_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 struct scsi_ctrl_blk* initio_find_first_pend_scb (struct initio_host*) ;
 int initio_next_state (struct initio_host*) ;
 int initio_release_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_select_atn (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_select_atn3 (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_select_atn_stop (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_unlink_pend_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int int_initio_busfree (struct initio_host*) ;
 scalar_t__ int_initio_resel (struct initio_host*) ;
 int int_initio_scsi_rst (struct initio_host*) ;
 int outb (int,scalar_t__) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static void tulip_scsi(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb;
 struct target_control *active_tc;


 if ((host->jsstatus0 = inb(host->addr + TUL_SStatus0)) & TSS_INT_PENDING) {
  host->phase = host->jsstatus0 & TSS_PH_MASK;
  host->jsstatus1 = inb(host->addr + TUL_SStatus1);
  host->jsint = inb(host->addr + TUL_SInt);
  if (host->jsint & TSS_SCSIRST_INT) {
   int_initio_scsi_rst(host);
   return;
  }
  if (host->jsint & TSS_RESEL_INT) {
   if (int_initio_resel(host) == 0)
    initio_next_state(host);
   return;
  }
  if (host->jsint & TSS_SEL_TIMEOUT) {
   int_initio_busfree(host);
   return;
  }
  if (host->jsint & TSS_DISC_INT) {
   int_initio_busfree(host);
   return;
  }
  if (host->jsint & (TSS_FUNC_COMP | TSS_BUS_SERV)) {
   if ((scb = host->active) != ((void*)0))
    initio_next_state(host);
   return;
  }
 }
 if (host->active != ((void*)0))
  return;

 if ((scb = initio_find_first_pend_scb(host)) == ((void*)0))
  return;


 outb((host->scsi_id << 4) | (scb->target & 0x0F),
  host->addr + TUL_SScsiId);
 if (scb->opcode == ExecSCSI) {
  active_tc = &host->targets[scb->target];

  if (scb->tagmsg)
   active_tc->drv_flags |= TCF_DRV_EN_TAG;
  else
   active_tc->drv_flags &= ~TCF_DRV_EN_TAG;

  outb(active_tc->js_period, host->addr + TUL_SPeriod);
  if ((active_tc->flags & (TCF_WDTR_DONE | TCF_NO_WDTR)) == 0) {
   initio_select_atn_stop(host, scb);
  } else {
   if ((active_tc->flags & (TCF_SYNC_DONE | TCF_NO_SYNC_NEGO)) == 0) {
    initio_select_atn_stop(host, scb);
   } else {
    if (scb->tagmsg)
     initio_select_atn3(host, scb);
    else
     initio_select_atn(host, scb);
   }
  }
  if (scb->flags & SCF_POLL) {
   while (wait_tulip(host) != -1) {
    if (initio_next_state(host) == -1)
     break;
   }
  }
 } else if (scb->opcode == BusDevRst) {
  initio_select_atn_stop(host, scb);
  scb->next_state = 8;
  if (scb->flags & SCF_POLL) {
   while (wait_tulip(host) != -1) {
    if (initio_next_state(host) == -1)
     break;
   }
  }
 } else if (scb->opcode == AbortCmd) {
  if (initio_abort_srb(host, scb->srb) != 0) {
   initio_unlink_pend_scb(host, scb);
   initio_release_scb(host, scb);
  } else {
   scb->opcode = BusDevRst;
   initio_select_atn_stop(host, scb);
   scb->next_state = 8;
  }
 } else {
  initio_unlink_pend_scb(host, scb);
  scb->hastat = 0x16;
  initio_append_done_scb(host, scb);
 }
 return;
}
