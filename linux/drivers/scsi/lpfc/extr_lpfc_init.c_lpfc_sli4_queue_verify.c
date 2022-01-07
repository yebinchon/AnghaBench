
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_ecount; int cq_esize; int eq_ecount; int eq_esize; } ;
struct lpfc_hba {scalar_t__ cfg_irq_chann; scalar_t__ cfg_nvmet_mrq; TYPE_1__ sli4_hba; int cfg_hdw_queue; scalar_t__ nvmet_support; } ;


 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_CQE_DEF_COUNT ;
 int LPFC_CQE_SIZE ;
 int LPFC_EQE_DEF_COUNT ;
 int LPFC_EQE_SIZE_4B ;
 scalar_t__ LPFC_NVMET_MRQ_MAX ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
lpfc_sli4_queue_verify(struct lpfc_hba *phba)
{





 if (phba->nvmet_support) {
  if (phba->cfg_irq_chann < phba->cfg_nvmet_mrq)
   phba->cfg_nvmet_mrq = phba->cfg_irq_chann;
  if (phba->cfg_nvmet_mrq > LPFC_NVMET_MRQ_MAX)
   phba->cfg_nvmet_mrq = LPFC_NVMET_MRQ_MAX;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2574 IO channels: hdwQ %d IRQ %d MRQ: %d\n",
   phba->cfg_hdw_queue, phba->cfg_irq_chann,
   phba->cfg_nvmet_mrq);


 phba->sli4_hba.eq_esize = LPFC_EQE_SIZE_4B;
 phba->sli4_hba.eq_ecount = LPFC_EQE_DEF_COUNT;


 phba->sli4_hba.cq_esize = LPFC_CQE_SIZE;
 phba->sli4_hba.cq_ecount = LPFC_CQE_DEF_COUNT;
 return 0;
}
