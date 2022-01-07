
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_sli_ring {int ring_lock; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; } ;


 int IOCB_ERROR ;
 scalar_t__ LPFC_SLI_REV4 ;
 int __lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 struct lpfc_sli_ring* lpfc_sli4_calc_ring (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

int
lpfc_sli_issue_iocb(struct lpfc_hba *phba, uint32_t ring_number,
      struct lpfc_iocbq *piocb, uint32_t flag)
{
 struct lpfc_sli_ring *pring;
 unsigned long iflags;
 int rc;

 if (phba->sli_rev == LPFC_SLI_REV4) {
  pring = lpfc_sli4_calc_ring(phba, piocb);
  if (unlikely(pring == ((void*)0)))
   return IOCB_ERROR;

  spin_lock_irqsave(&pring->ring_lock, iflags);
  rc = __lpfc_sli_issue_iocb(phba, ring_number, piocb, flag);
  spin_unlock_irqrestore(&pring->ring_lock, iflags);
 } else {

  spin_lock_irqsave(&phba->hbalock, iflags);
  rc = __lpfc_sli_issue_iocb(phba, ring_number, piocb, flag);
  spin_unlock_irqrestore(&phba->hbalock, iflags);
 }
 return rc;
}
