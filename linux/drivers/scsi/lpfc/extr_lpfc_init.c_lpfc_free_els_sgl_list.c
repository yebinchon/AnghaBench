
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sgl_list_lock; int lpfc_els_sgl_list; } ;
struct lpfc_hba {int hbalock; TYPE_1__ sli4_hba; } ;


 int LIST_HEAD (int ) ;
 int list_splice_init (int *,int *) ;
 int lpfc_free_sgl_list (struct lpfc_hba*,int *) ;
 int sglq_list ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_free_els_sgl_list(struct lpfc_hba *phba)
{
 LIST_HEAD(sglq_list);


 spin_lock_irq(&phba->hbalock);
 spin_lock(&phba->sli4_hba.sgl_list_lock);
 list_splice_init(&phba->sli4_hba.lpfc_els_sgl_list, &sglq_list);
 spin_unlock(&phba->sli4_hba.sgl_list_lock);
 spin_unlock_irq(&phba->hbalock);


 lpfc_free_sgl_list(phba, &sglq_list);
}
