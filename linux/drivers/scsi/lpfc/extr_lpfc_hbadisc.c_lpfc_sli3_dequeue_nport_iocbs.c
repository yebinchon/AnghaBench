
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct lpfc_sli {size_t num_rings; int * sli3_ring; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int hbalock; struct lpfc_sli sli; } ;
struct list_head {int dummy; } ;


 int __lpfc_dequeue_nport_iocbs (struct lpfc_hba*,struct lpfc_nodelist*,int *,struct list_head*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_sli3_dequeue_nport_iocbs(struct lpfc_hba *phba,
  struct lpfc_nodelist *ndlp, struct list_head *dequeue_list)
{
 struct lpfc_sli *psli = &phba->sli;
 uint32_t i;

 spin_lock_irq(&phba->hbalock);
 for (i = 0; i < psli->num_rings; i++)
  __lpfc_dequeue_nport_iocbs(phba, ndlp, &psli->sli3_ring[i],
      dequeue_list);
 spin_unlock_irq(&phba->hbalock);
}
