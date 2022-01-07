
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_queue {int hba_index; int qe_valid; int entry_count; } ;
struct lpfc_mcqe {int dummy; } ;
struct TYPE_3__ {scalar_t__ cqav; } ;
struct TYPE_4__ {TYPE_1__ pc_sli4_params; struct lpfc_queue* mbx_cq; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_2__ sli4_hba; } ;
typedef struct lpfc_mcqe lpfc_cqe ;


 scalar_t__ LPFC_SLI_REV4 ;
 int bf_get_le32 (int ,struct lpfc_mcqe*) ;
 int lpfc_cqe_valid ;
 scalar_t__ lpfc_sli4_qe (struct lpfc_queue*,int) ;
 int lpfc_trailer_async ;
 int lpfc_trailer_completed ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
lpfc_sli4_mbox_completions_pending(struct lpfc_hba *phba)
{

 uint32_t idx;
 struct lpfc_queue *mcq;
 struct lpfc_mcqe *mcqe;
 bool pending_completions = 0;
 uint8_t qe_valid;

 if (unlikely(!phba) || (phba->sli_rev != LPFC_SLI_REV4))
  return 0;



 mcq = phba->sli4_hba.mbx_cq;
 idx = mcq->hba_index;
 qe_valid = mcq->qe_valid;
 while (bf_get_le32(lpfc_cqe_valid,
        (struct lpfc_cqe *)lpfc_sli4_qe(mcq, idx)) == qe_valid) {
  mcqe = (struct lpfc_mcqe *)(lpfc_sli4_qe(mcq, idx));
  if (bf_get_le32(lpfc_trailer_completed, mcqe) &&
      (!bf_get_le32(lpfc_trailer_async, mcqe))) {
   pending_completions = 1;
   break;
  }
  idx = (idx + 1) % mcq->entry_count;
  if (mcq->hba_index == idx)
   break;


  if (phba->sli4_hba.pc_sli4_params.cqav && !idx)
   qe_valid = (qe_valid) ? 0 : 1;
 }
 return pending_completions;

}
