
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_sli_ring {scalar_t__ ringno; int txq; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {TYPE_1__ sli; int hbalock; } ;
typedef int IOCB_t ;


 scalar_t__ LPFC_FCP_RING ;
 int LPFC_PROCESS_LA ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ lpfc_is_link_up (struct lpfc_hba*) ;
 int * lpfc_sli_next_iocb_slot (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 struct lpfc_iocbq* lpfc_sli_ringtx_get (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 int lpfc_sli_submit_iocb (struct lpfc_hba*,struct lpfc_sli_ring*,int *,struct lpfc_iocbq*) ;
 int lpfc_sli_update_full_ring (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 int lpfc_sli_update_ring (struct lpfc_hba*,struct lpfc_sli_ring*) ;

__attribute__((used)) static void
lpfc_sli_resume_iocb(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
 IOCB_t *iocb;
 struct lpfc_iocbq *nextiocb;

 lockdep_assert_held(&phba->hbalock);
 if (lpfc_is_link_up(phba) &&
     (!list_empty(&pring->txq)) &&
     (pring->ringno != LPFC_FCP_RING ||
      phba->sli.sli_flag & LPFC_PROCESS_LA)) {

  while ((iocb = lpfc_sli_next_iocb_slot(phba, pring)) &&
         (nextiocb = lpfc_sli_ringtx_get(phba, pring)))
   lpfc_sli_submit_iocb(phba, pring, iocb, nextiocb);

  if (iocb)
   lpfc_sli_update_ring(phba, pring);
  else
   lpfc_sli_update_full_ring(phba, pring);
 }

 return;
}
