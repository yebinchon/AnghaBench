
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba_eq_hdl {int idx; struct lpfc_hba* phba; } ;
struct TYPE_4__ {struct lpfc_hba_eq_hdl* hba_eq_hdl; } ;
struct lpfc_hba {scalar_t__ intr_type; int cfg_irq_chann; TYPE_2__ sli4_hba; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int irq; } ;


 scalar_t__ INTx ;
 int IRQF_SHARED ;
 int LPFC_DRIVER_NAME ;
 int LPFC_INTR_ERROR ;
 scalar_t__ MSI ;
 scalar_t__ MSIX ;
 scalar_t__ NONE ;
 int lpfc_sli4_enable_msi (struct lpfc_hba*) ;
 int lpfc_sli4_enable_msix (struct lpfc_hba*) ;
 int lpfc_sli4_intr_handler ;
 int request_irq (int ,int ,int ,int ,struct lpfc_hba*) ;

__attribute__((used)) static uint32_t
lpfc_sli4_enable_intr(struct lpfc_hba *phba, uint32_t cfg_mode)
{
 uint32_t intr_mode = LPFC_INTR_ERROR;
 int retval, idx;

 if (cfg_mode == 2) {

  retval = 0;
  if (!retval) {

   retval = lpfc_sli4_enable_msix(phba);
   if (!retval) {

    phba->intr_type = MSIX;
    intr_mode = 2;
   }
  }
 }


 if (cfg_mode >= 1 && phba->intr_type == NONE) {
  retval = lpfc_sli4_enable_msi(phba);
  if (!retval) {

   phba->intr_type = MSI;
   intr_mode = 1;
  }
 }


 if (phba->intr_type == NONE) {
  retval = request_irq(phba->pcidev->irq, lpfc_sli4_intr_handler,
         IRQF_SHARED, LPFC_DRIVER_NAME, phba);
  if (!retval) {
   struct lpfc_hba_eq_hdl *eqhdl;


   phba->intr_type = INTx;
   intr_mode = 0;

   for (idx = 0; idx < phba->cfg_irq_chann; idx++) {
    eqhdl = &phba->sli4_hba.hba_eq_hdl[idx];
    eqhdl->idx = idx;
    eqhdl->phba = phba;
   }
  }
 }
 return intr_mode;
}
