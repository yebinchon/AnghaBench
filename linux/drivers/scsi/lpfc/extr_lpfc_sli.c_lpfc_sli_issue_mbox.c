
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int (* lpfc_sli_issue_mbox ) (struct lpfc_hba*,int *,int ) ;} ;
typedef int LPFC_MBOXQ_t ;


 int stub1 (struct lpfc_hba*,int *,int ) ;

int
lpfc_sli_issue_mbox(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmbox, uint32_t flag)
{
 return phba->lpfc_sli_issue_mbox(phba, pmbox, flag);
}
