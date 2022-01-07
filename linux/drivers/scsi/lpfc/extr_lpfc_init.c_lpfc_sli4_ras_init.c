
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ras_hwsupport; int ras_enabled; } ;
struct lpfc_hba {TYPE_2__ ras_fwlog; int cfg_ras_fwlog_buffsize; TYPE_1__* pcidev; int cfg_ras_fwlog_func; } ;
struct TYPE_3__ {int device; int devfn; } ;




 int PCI_FUNC (int ) ;

void
lpfc_sli4_ras_init(struct lpfc_hba *phba)
{
 switch (phba->pcidev->device) {
 case 129:
 case 128:
  phba->ras_fwlog.ras_hwsupport = 1;
  if (phba->cfg_ras_fwlog_func == PCI_FUNC(phba->pcidev->devfn) &&
      phba->cfg_ras_fwlog_buffsize)
   phba->ras_fwlog.ras_enabled = 1;
  else
   phba->ras_fwlog.ras_enabled = 0;
  break;
 default:
  phba->ras_fwlog.ras_hwsupport = 0;
 }
}
