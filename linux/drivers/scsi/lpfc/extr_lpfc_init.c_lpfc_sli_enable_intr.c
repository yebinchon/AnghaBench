
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {scalar_t__ intr_type; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ INTx ;
 int IRQF_SHARED ;
 int LPFC_DRIVER_NAME ;
 int LPFC_INTR_ERROR ;
 int LPFC_SLI_REV3 ;
 scalar_t__ MSI ;
 scalar_t__ MSIX ;
 scalar_t__ NONE ;
 int lpfc_sli_config_port (struct lpfc_hba*,int ) ;
 int lpfc_sli_enable_msi (struct lpfc_hba*) ;
 int lpfc_sli_enable_msix (struct lpfc_hba*) ;
 int lpfc_sli_intr_handler ;
 int request_irq (int ,int ,int ,int ,struct lpfc_hba*) ;

__attribute__((used)) static uint32_t
lpfc_sli_enable_intr(struct lpfc_hba *phba, uint32_t cfg_mode)
{
 uint32_t intr_mode = LPFC_INTR_ERROR;
 int retval;

 if (cfg_mode == 2) {

  retval = lpfc_sli_config_port(phba, LPFC_SLI_REV3);
  if (!retval) {

   retval = lpfc_sli_enable_msix(phba);
   if (!retval) {

    phba->intr_type = MSIX;
    intr_mode = 2;
   }
  }
 }


 if (cfg_mode >= 1 && phba->intr_type == NONE) {
  retval = lpfc_sli_enable_msi(phba);
  if (!retval) {

   phba->intr_type = MSI;
   intr_mode = 1;
  }
 }


 if (phba->intr_type == NONE) {
  retval = request_irq(phba->pcidev->irq, lpfc_sli_intr_handler,
         IRQF_SHARED, LPFC_DRIVER_NAME, phba);
  if (!retval) {

   phba->intr_type = INTx;
   intr_mode = 0;
  }
 }
 return intr_mode;
}
