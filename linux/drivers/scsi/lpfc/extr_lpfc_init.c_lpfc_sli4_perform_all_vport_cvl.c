
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int max_vports; } ;


 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_sli4_perform_vport_cvl (struct lpfc_vport*) ;

__attribute__((used)) static void
lpfc_sli4_perform_all_vport_cvl(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 int i;

 vports = lpfc_create_vport_work_array(phba);
 if (vports)
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++)
   lpfc_sli4_perform_vport_cvl(vports[i]);
 lpfc_destroy_vport_work_array(phba, vports);
}
