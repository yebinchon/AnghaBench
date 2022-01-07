
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct lpfc_hba* sli3_ring; } ;
struct TYPE_3__ {struct lpfc_hba* hdwq; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_2__ sli; int brd_no; TYPE_1__ sli4_hba; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 int idr_remove (int *,int ) ;
 int kfree (struct lpfc_hba*) ;
 int lpfc_hba_index ;

__attribute__((used)) static void
lpfc_hba_free(struct lpfc_hba *phba)
{
 if (phba->sli_rev == LPFC_SLI_REV4)
  kfree(phba->sli4_hba.hdwq);


 idr_remove(&lpfc_hba_index, phba->brd_no);


 kfree(phba->sli.sli3_ring);
 phba->sli.sli3_ring = ((void*)0);

 kfree(phba);
 return;
}
