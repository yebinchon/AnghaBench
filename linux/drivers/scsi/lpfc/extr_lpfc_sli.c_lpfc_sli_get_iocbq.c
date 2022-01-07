
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int hbalock; } ;


 struct lpfc_iocbq* __lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct lpfc_iocbq *
lpfc_sli_get_iocbq(struct lpfc_hba *phba)
{
 struct lpfc_iocbq * iocbq = ((void*)0);
 unsigned long iflags;

 spin_lock_irqsave(&phba->hbalock, iflags);
 iocbq = __lpfc_sli_get_iocbq(phba);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 return iocbq;
}
