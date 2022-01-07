
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pm8001_hba_info {int shost; TYPE_1__* irq_vector; struct pci_dev* pdev; } ;
struct pci_dev {int irq; scalar_t__ msix_cap; } ;
struct TYPE_2__ {struct pm8001_hba_info* drv_inst; scalar_t__ irq_id; } ;


 int DRV_NAME ;
 int IRQF_SHARED ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int SHOST_TO_SAS_HA (int ) ;
 scalar_t__ pci_msi_enabled () ;
 int pm8001_interrupt_handler_intx ;
 int pm8001_printk (char*) ;
 int pm8001_setup_msix (struct pm8001_hba_info*) ;
 int request_irq (int ,int ,int ,int ,int ) ;

__attribute__((used)) static u32 pm8001_request_irq(struct pm8001_hba_info *pm8001_ha)
{
 struct pci_dev *pdev;
 int rc;

 pdev = pm8001_ha->pdev;
intx:

 pm8001_ha->irq_vector[0].irq_id = 0;
 pm8001_ha->irq_vector[0].drv_inst = pm8001_ha;
 rc = request_irq(pdev->irq, pm8001_interrupt_handler_intx, IRQF_SHARED,
  DRV_NAME, SHOST_TO_SAS_HA(pm8001_ha->shost));
 return rc;
}
