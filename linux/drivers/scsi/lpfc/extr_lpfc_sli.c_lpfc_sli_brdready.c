
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int (* lpfc_sli_brdready ) (struct lpfc_hba*,int ) ;} ;


 int stub1 (struct lpfc_hba*,int ) ;

int
lpfc_sli_brdready(struct lpfc_hba *phba, uint32_t mask)
{
 return phba->lpfc_sli_brdready(phba, mask);
}
