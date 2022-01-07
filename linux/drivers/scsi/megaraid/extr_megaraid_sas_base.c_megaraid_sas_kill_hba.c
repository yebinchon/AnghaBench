
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {scalar_t__ adapter_type; TYPE_2__* reg_set; int ld_ids; scalar_t__ peerIsPresent; scalar_t__ requestorId; TYPE_1__* pdev; int adprecovery; } ;
struct TYPE_4__ {int inbound_doorbell; int doorbell; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 int MEGASAS_HW_CRITICAL_ERROR ;
 int MEGASAS_MAX_LD_IDS ;
 scalar_t__ MFI_SERIES ;
 int MFI_STOP_ADP ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0071SKINNY ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0073SKINNY ;
 int atomic_set (int *,int ) ;
 int megasas_complete_outstanding_ioctls (struct megasas_instance*) ;
 int memset (int ,int,int ) ;
 int msleep (int) ;
 int readl (int *) ;
 int writel (int ,int *) ;

void megaraid_sas_kill_hba(struct megasas_instance *instance)
{

 atomic_set(&instance->adprecovery, MEGASAS_HW_CRITICAL_ERROR);

 msleep(1000);
 if ((instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0073SKINNY) ||
  (instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0071SKINNY) ||
  (instance->adapter_type != MFI_SERIES)) {
  if (!instance->requestorId) {
   writel(MFI_STOP_ADP, &instance->reg_set->doorbell);

   readl(&instance->reg_set->doorbell);
  }
  if (instance->requestorId && instance->peerIsPresent)
   memset(instance->ld_ids, 0xff, MEGASAS_MAX_LD_IDS);
 } else {
  writel(MFI_STOP_ADP,
   &instance->reg_set->inbound_doorbell);
 }

 megasas_complete_outstanding_ioctls(instance);
}
