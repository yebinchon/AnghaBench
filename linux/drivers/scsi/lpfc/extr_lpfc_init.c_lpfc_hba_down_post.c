
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int (* lpfc_hba_down_post ) (struct lpfc_hba*) ;} ;


 int stub1 (struct lpfc_hba*) ;

int
lpfc_hba_down_post(struct lpfc_hba *phba)
{
 return (*phba->lpfc_hba_down_post)(phba);
}
