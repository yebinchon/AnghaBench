
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mboxq_cmpl; } ;
struct lpfc_hba {TYPE_1__ sli; } ;
struct TYPE_5__ {int list; } ;
typedef TYPE_2__ LPFC_MBOXQ_t ;


 int list_add_tail (int *,int *) ;

void
__lpfc_mbox_cmpl_put(struct lpfc_hba *phba, LPFC_MBOXQ_t *mbq)
{
 list_add_tail(&mbq->list, &phba->sli.mboxq_cmpl);
}
