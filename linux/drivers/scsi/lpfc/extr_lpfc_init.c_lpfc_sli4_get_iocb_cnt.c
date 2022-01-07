
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ nvmet_support; } ;


 scalar_t__ LPFC_NVMET_BUF_POST ;
 int lpfc_sli4_get_els_iocb_cnt (struct lpfc_hba*) ;

int
lpfc_sli4_get_iocb_cnt(struct lpfc_hba *phba)
{
 int max_xri = lpfc_sli4_get_els_iocb_cnt(phba);

 if (phba->nvmet_support)
  max_xri += LPFC_NVMET_BUF_POST;
 return max_xri;
}
