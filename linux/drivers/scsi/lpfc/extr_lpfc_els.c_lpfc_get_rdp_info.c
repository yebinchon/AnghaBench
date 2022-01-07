
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_rdp_context {TYPE_1__* ndlp; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct TYPE_8__ {struct lpfc_rdp_context* ctx_ndlp; int mbox_cmpl; int vport; } ;
struct TYPE_7__ {int vport; } ;
typedef TYPE_2__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_WARNING ;
 int LOG_ELS ;
 int LOG_MBOX ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_mbx_cmpl_rdp_page_a0 ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*) ;
 scalar_t__ lpfc_sli4_dump_page_a0 (struct lpfc_hba*,TYPE_2__*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_2__*,int ) ;
 TYPE_2__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_2__*,int ) ;

__attribute__((used)) static int
lpfc_get_rdp_info(struct lpfc_hba *phba, struct lpfc_rdp_context *rdp_context)
{
 LPFC_MBOXQ_t *mbox = ((void*)0);
 int rc;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_MBOX | LOG_ELS,
    "7105 failed to allocate mailbox memory");
  return 1;
 }

 if (lpfc_sli4_dump_page_a0(phba, mbox))
  goto prep_mbox_fail;
 mbox->vport = rdp_context->ndlp->vport;
 mbox->mbox_cmpl = lpfc_mbx_cmpl_rdp_page_a0;
 mbox->ctx_ndlp = (struct lpfc_rdp_context *)rdp_context;
 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED)
  goto issue_mbox_fail;

 return 0;

prep_mbox_fail:
issue_mbox_fail:
 mempool_free(mbox, phba->mbox_mem_pool);
 return 1;
}
