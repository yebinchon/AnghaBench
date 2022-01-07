
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {int hba_flag; TYPE_1__* pcidev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 int HBA_FCOE_MODE ;
 scalar_t__ PCI_DEVICE_ID_SKYHAWK ;

__attribute__((used)) static void
lpfc_get_hba_function_mode(struct lpfc_hba *phba)
{

 if (phba->pcidev->device == PCI_DEVICE_ID_SKYHAWK)
  phba->hba_flag |= HBA_FCOE_MODE;
 else
  phba->hba_flag &= ~HBA_FCOE_MODE;
}
