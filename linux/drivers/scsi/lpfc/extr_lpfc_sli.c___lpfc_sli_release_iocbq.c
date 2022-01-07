
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int iocb_cnt; int (* __lpfc_sli_release_iocbq ) (struct lpfc_hba*,struct lpfc_iocbq*) ;int hbalock; } ;


 int lockdep_assert_held (int *) ;
 int stub1 (struct lpfc_hba*,struct lpfc_iocbq*) ;

__attribute__((used)) static void
__lpfc_sli_release_iocbq(struct lpfc_hba *phba, struct lpfc_iocbq *iocbq)
{
 lockdep_assert_held(&phba->hbalock);

 phba->__lpfc_sli_release_iocbq(phba, iocbq);
 phba->iocb_cnt--;
}
