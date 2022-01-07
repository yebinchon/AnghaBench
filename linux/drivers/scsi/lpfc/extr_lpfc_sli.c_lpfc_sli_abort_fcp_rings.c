
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_sli {struct lpfc_sli_ring* sli3_ring; } ;
struct TYPE_4__ {TYPE_3__* hdwq; } ;
struct lpfc_hba {scalar_t__ sli_rev; size_t cfg_hdw_queue; TYPE_1__ sli4_hba; struct lpfc_sli sli; } ;
struct TYPE_6__ {TYPE_2__* io_wq; } ;
struct TYPE_5__ {struct lpfc_sli_ring* pring; } ;


 size_t LPFC_FCP_RING ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_sli_abort_iocb_ring (struct lpfc_hba*,struct lpfc_sli_ring*) ;

void
lpfc_sli_abort_fcp_rings(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_sli_ring *pring;
 uint32_t i;


 if (phba->sli_rev >= LPFC_SLI_REV4) {
  for (i = 0; i < phba->cfg_hdw_queue; i++) {
   pring = phba->sli4_hba.hdwq[i].io_wq->pring;
   lpfc_sli_abort_iocb_ring(phba, pring);
  }
 } else {
  pring = &psli->sli3_ring[LPFC_FCP_RING];
  lpfc_sli_abort_iocb_ring(phba, pring);
 }
}
