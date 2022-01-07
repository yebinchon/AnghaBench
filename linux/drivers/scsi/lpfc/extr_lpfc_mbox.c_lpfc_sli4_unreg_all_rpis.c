
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct lpfc_vport {size_t vpi; struct lpfc_hba* phba; } ;
struct lpfc_hba {int mbox_mem_pool; int * vpi_ids; } ;
struct TYPE_10__ {int rsvd1; } ;
struct TYPE_11__ {TYPE_1__ varUnregLogin; } ;
struct TYPE_12__ {TYPE_2__ un; } ;
struct TYPE_13__ {TYPE_3__ mb; } ;
struct TYPE_14__ {int * ctx_ndlp; int mbox_cmpl; struct lpfc_vport* vport; TYPE_4__ u; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_5__*,int ) ;
 int lpfc_unreg_login (struct lpfc_hba*,size_t,int ,TYPE_5__*) ;
 TYPE_5__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_5__*,int ) ;

void
lpfc_sli4_unreg_all_rpis(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *mbox;
 int rc;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (mbox) {







  lpfc_unreg_login(phba, vport->vpi, phba->vpi_ids[vport->vpi],
     mbox);
  mbox->u.mb.un.varUnregLogin.rsvd1 = 0x4000;
  mbox->vport = vport;
  mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
  mbox->ctx_ndlp = ((void*)0);
  rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
  if (rc == MBX_NOT_FINISHED)
   mempool_free(mbox, phba->mbox_mem_pool);
 }
}
