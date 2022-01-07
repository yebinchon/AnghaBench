
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_type; } ;
struct lpfc_sli_ring {int flag; } ;
struct lpfc_sli {struct lpfc_sli_ring* sli3_ring; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ sli_rev; int mbox_mem_pool; struct lpfc_sli sli; } ;
struct TYPE_6__ {struct lpfc_vport* vport; int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 scalar_t__ LPFC_CLEAR_LA ;
 size_t LPFC_EXTRA_RING ;
 size_t LPFC_FCP_RING ;
 scalar_t__ LPFC_HBA_ERROR ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_STOP_IOCB_EVENT ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_clear_la (struct lpfc_hba*,TYPE_1__*) ;
 int lpfc_disc_flush_list (struct lpfc_vport*) ;
 int lpfc_mbx_cmpl_clear_la ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;

void
lpfc_issue_clear_la(struct lpfc_hba *phba, struct lpfc_vport *vport)
{
 LPFC_MBOXQ_t *mbox;
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_sli_ring *extra_ring = &psli->sli3_ring[LPFC_EXTRA_RING];
 struct lpfc_sli_ring *fcp_ring = &psli->sli3_ring[LPFC_FCP_RING];
 int rc;





 if ((phba->link_state >= LPFC_CLEAR_LA) ||
     (vport->port_type != LPFC_PHYSICAL_PORT) ||
  (phba->sli_rev == LPFC_SLI_REV4))
  return;


 if ((mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL)) != ((void*)0)) {
  phba->link_state = LPFC_CLEAR_LA;
  lpfc_clear_la(phba, mbox);
  mbox->mbox_cmpl = lpfc_mbx_cmpl_clear_la;
  mbox->vport = vport;
  rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
  if (rc == MBX_NOT_FINISHED) {
   mempool_free(mbox, phba->mbox_mem_pool);
   lpfc_disc_flush_list(vport);
   extra_ring->flag &= ~LPFC_STOP_IOCB_EVENT;
   fcp_ring->flag &= ~LPFC_STOP_IOCB_EVENT;
   phba->link_state = LPFC_HBA_ERROR;
  }
 }
}
