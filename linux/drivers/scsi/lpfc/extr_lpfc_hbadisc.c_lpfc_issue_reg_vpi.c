
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_6__ {struct lpfc_vport* vport; int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 scalar_t__ MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_mbx_cmpl_reg_vpi ;
 int lpfc_reg_vpi (struct lpfc_vport*,TYPE_1__*) ;
 scalar_t__ lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_issue_reg_vpi(struct lpfc_hba *phba, struct lpfc_vport *vport)
{
 LPFC_MBOXQ_t *regvpimbox;

 regvpimbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (regvpimbox) {
  lpfc_reg_vpi(vport, regvpimbox);
  regvpimbox->mbox_cmpl = lpfc_mbx_cmpl_reg_vpi;
  regvpimbox->vport = vport;
  if (lpfc_sli_issue_mbox(phba, regvpimbox, MBX_NOWAIT)
     == MBX_NOT_FINISHED) {
   mempool_free(regvpimbox, phba->mbox_mem_pool);
  }
 }
}
