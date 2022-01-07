
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int hbalock; } ;


 int __lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_sli_release_iocbq(struct lpfc_hba *phba, struct lpfc_iocbq *iocbq)
{
 unsigned long iflags;




 spin_lock_irqsave(&phba->hbalock, iflags);
 __lpfc_sli_release_iocbq(phba, iocbq);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
}
