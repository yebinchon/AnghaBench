
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_tcb {int dummy; } ;
struct sym_lcb {int started_tags; int started_max; scalar_t__ num_sgood; } ;
struct sym_hcb {int squeue_ba; int comp_ccbq; struct sym_tcb* target; } ;
struct sym_ccb {size_t target; int link_ccbq; int ssss_status; int host_status; scalar_t__ sv_resid; int xerr_status; int host_flags; struct scsi_cmnd* cmd; } ;
struct scsi_device {int lun; int sdev_gendev; } ;
struct scsi_cmnd {struct scsi_device* device; } ;


 int DEBUG_FLAGS ;
 int DEBUG_RESULT ;
 int DEBUG_TINY ;
 int DID_SOFT_ERROR ;
 int HS_BUSY ;
 int HS_COMPLETE ;
 int HS_COMP_ERR ;
 int INL (struct sym_hcb*,int ) ;
 int OUTL_DSP (struct sym_hcb*,int ) ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SYM_SETUP_RESIDUAL_SUPPORT ;
 int S_ILLEGAL ;
 int S_QUEUE_FULL ;
 int dev_info (int *,char*,struct sym_ccb*,int ,int ,int ) ;
 int nc_scratcha ;
 int printf (char*,int,int) ;
 int start ;
 int sym_compute_residual (struct sym_hcb*,struct sym_ccb*) ;
 int sym_dequeue_from_squeue (struct sym_hcb*,int,size_t,int ,int) ;
 int sym_flush_comp_queue (struct sym_hcb*,int ) ;
 int sym_insque_head (int *,int *) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int ) ;
 int sym_print_addr (struct scsi_cmnd*,char*,int) ;
 int sym_print_xerr (struct scsi_cmnd*,int ) ;
 int sym_remque (int *) ;
 int sym_set_cam_result_error (struct sym_hcb*,struct sym_ccb*,int) ;
 int sym_set_cam_status (struct scsi_cmnd*,int ) ;
 int sym_start_next_ccbs (struct sym_hcb*,struct sym_lcb*,int) ;
 int sym_verbose ;

void sym_complete_error(struct sym_hcb *np, struct sym_ccb *cp)
{
 struct scsi_device *sdev;
 struct scsi_cmnd *cmd;
 struct sym_tcb *tp;
 struct sym_lcb *lp;
 int resid;
 int i;




 if (!cp || !cp->cmd)
  return;

 cmd = cp->cmd;
 sdev = cmd->device;
 if (DEBUG_FLAGS & (DEBUG_TINY|DEBUG_RESULT)) {
  dev_info(&sdev->sdev_gendev, "CCB=%p STAT=%x/%x/%x\n", cp,
   cp->host_status, cp->ssss_status, cp->host_flags);
 }




 tp = &np->target[cp->target];
 lp = sym_lp(tp, sdev->lun);




 if (cp->xerr_status) {
  if (sym_verbose)
   sym_print_xerr(cmd, cp->xerr_status);
  if (cp->host_status == HS_COMPLETE)
   cp->host_status = HS_COMP_ERR;
 }




 resid = sym_compute_residual(np, cp);

 if (!SYM_SETUP_RESIDUAL_SUPPORT) {
  resid = 0;
  cp->sv_resid = 0;
 }
 i = (INL(np, nc_scratcha) - np->squeue_ba) / 4;
 i = sym_dequeue_from_squeue(np, i, cp->target, sdev->lun, -1);




 OUTL_DSP(np, SCRIPTA_BA(np, start));
 sym_set_cam_result_error(np, cp, resid);







 sym_remque(&cp->link_ccbq);
 sym_insque_head(&cp->link_ccbq, &np->comp_ccbq);





 sym_flush_comp_queue(np, 0);







}
