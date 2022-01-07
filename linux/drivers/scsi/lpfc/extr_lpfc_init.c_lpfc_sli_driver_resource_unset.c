
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;


 int lpfc_mem_free_all (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_sli_driver_resource_unset(struct lpfc_hba *phba)
{

 lpfc_mem_free_all(phba);

 return;
}
