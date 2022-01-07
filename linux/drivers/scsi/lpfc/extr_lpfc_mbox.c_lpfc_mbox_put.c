
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_sli {int mboxq_cnt; int mboxq; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;
struct TYPE_3__ {int list; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int list_add_tail (int *,int *) ;

void
lpfc_mbox_put(struct lpfc_hba * phba, LPFC_MBOXQ_t * mbq)
{
 struct lpfc_sli *psli;

 psli = &phba->sli;

 list_add_tail(&mbq->list, &psli->mboxq);

 psli->mboxq_cnt++;

 return;
}
