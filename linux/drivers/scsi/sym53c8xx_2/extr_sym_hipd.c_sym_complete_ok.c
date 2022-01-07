
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_tcb {int dummy; } ;
struct sym_lcb {scalar_t__ started_max; scalar_t__ started_limit; int num_sgood; int waiting_ccbq; } ;
struct sym_hcb {struct sym_tcb* target; } ;
struct TYPE_3__ {scalar_t__ lastp; } ;
struct TYPE_4__ {TYPE_1__ head; } ;
struct sym_ccb {scalar_t__ host_status; size_t target; scalar_t__ goalp; TYPE_2__ phys; int lun; struct scsi_cmnd* cmd; } ;
struct scsi_cmnd {int dummy; } ;


 scalar_t__ HS_COMPLETE ;
 int SYM_SETUP_RESIDUAL_SUPPORT ;
 int assert (int) ;
 int printf (char*,int,int) ;
 int sym_compute_residual (struct sym_hcb*,struct sym_ccb*) ;
 int sym_free_ccb (struct sym_hcb*,struct sym_ccb*) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int ) ;
 int sym_print_addr (struct scsi_cmnd*,char*,scalar_t__) ;
 int sym_que_empty (int *) ;
 int sym_set_cam_result_ok (struct sym_ccb*,struct scsi_cmnd*,int) ;
 int sym_start_next_ccbs (struct sym_hcb*,struct sym_lcb*,int) ;
 int sym_verbose ;
 int sym_xpt_done (struct sym_hcb*,struct scsi_cmnd*) ;

void sym_complete_ok (struct sym_hcb *np, struct sym_ccb *cp)
{
 struct sym_tcb *tp;
 struct sym_lcb *lp;
 struct scsi_cmnd *cmd;
 int resid;




 if (!cp || !cp->cmd)
  return;
 assert (cp->host_status == HS_COMPLETE);




 cmd = cp->cmd;




 tp = &np->target[cp->target];
 lp = sym_lp(tp, cp->lun);





 resid = 0;
 if (cp->phys.head.lastp != cp->goalp)
  resid = sym_compute_residual(np, cp);






 if (!SYM_SETUP_RESIDUAL_SUPPORT)
  resid = 0;
 sym_set_cam_result_ok(cp, cmd, resid);
 sym_free_ccb (np, cp);
 sym_xpt_done(np, cmd);
}
