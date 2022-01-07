
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcm_loop_tpg {int dummy; } ;
struct tcm_loop_hba {struct tcm_loop_tpg* tl_hba_tpgs; } ;
struct scsi_cmnd {TYPE_1__* request; TYPE_2__* device; } ;
struct TYPE_4__ {size_t id; int lun; int host; } ;
struct TYPE_3__ {int tag; } ;


 int FAILED ;
 int SUCCESS ;
 int TMR_ABORT_TASK ;
 int TMR_FUNCTION_COMPLETE ;
 scalar_t__ shost_priv (int ) ;
 int tcm_loop_issue_tmr (struct tcm_loop_tpg*,int ,int ,int ) ;

__attribute__((used)) static int tcm_loop_abort_task(struct scsi_cmnd *sc)
{
 struct tcm_loop_hba *tl_hba;
 struct tcm_loop_tpg *tl_tpg;
 int ret = FAILED;




 tl_hba = *(struct tcm_loop_hba **)shost_priv(sc->device->host);
 tl_tpg = &tl_hba->tl_hba_tpgs[sc->device->id];
 ret = tcm_loop_issue_tmr(tl_tpg, sc->device->lun,
     sc->request->tag, TMR_ABORT_TASK);
 return (ret == TMR_FUNCTION_COMPLETE) ? SUCCESS : FAILED;
}
