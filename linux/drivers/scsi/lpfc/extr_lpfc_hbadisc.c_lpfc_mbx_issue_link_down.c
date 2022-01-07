
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;


 int lpfc_enable_la (struct lpfc_hba*) ;
 int lpfc_linkdown (struct lpfc_hba*) ;
 int lpfc_unregister_unused_fcf (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_mbx_issue_link_down(struct lpfc_hba *phba)
{
 lpfc_linkdown(phba);
 lpfc_enable_la(phba);
 lpfc_unregister_unused_fcf(phba);

}
