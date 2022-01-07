
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli_ring {int dummy; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int hbalock; } ;


 int lockdep_assert_held (int *) ;
 struct lpfc_iocbq* lpfc_sli_ringtx_get (struct lpfc_hba*,struct lpfc_sli_ring*) ;

__attribute__((used)) static struct lpfc_iocbq *
lpfc_sli_next_iocb(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
     struct lpfc_iocbq **piocb)
{
 struct lpfc_iocbq * nextiocb;

 lockdep_assert_held(&phba->hbalock);

 nextiocb = lpfc_sli_ringtx_get(phba, pring);
 if (!nextiocb) {
  nextiocb = *piocb;
  *piocb = ((void*)0);
 }

 return nextiocb;
}
