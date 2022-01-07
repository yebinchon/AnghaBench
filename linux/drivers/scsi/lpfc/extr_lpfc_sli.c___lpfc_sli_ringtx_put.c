
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli_ring {int txq; } ;
struct lpfc_iocbq {int list; } ;
struct lpfc_hba {int hbalock; } ;


 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;

void
__lpfc_sli_ringtx_put(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
      struct lpfc_iocbq *piocb)
{
 lockdep_assert_held(&phba->hbalock);

 list_add_tail(&piocb->list, &pring->txq);
}
