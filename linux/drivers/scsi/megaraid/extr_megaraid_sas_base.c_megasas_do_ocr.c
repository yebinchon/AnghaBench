
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {int work_init; int fw_outstanding; scalar_t__ issuepend_done; int adprecovery; TYPE_1__* instancet; int * consumer; TYPE_2__* pdev; } ;
struct TYPE_4__ {scalar_t__ device; } ;
struct TYPE_3__ {int (* disable_intr ) (struct megasas_instance*) ;} ;


 int MEGASAS_ADPRESET_INPROG_SIGN ;
 int MEGASAS_ADPRESET_SM_INFAULT ;
 scalar_t__ PCI_DEVICE_ID_DELL_PERC5 ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS1064R ;
 scalar_t__ PCI_DEVICE_ID_LSI_VERDE_ZCR ;
 int atomic_set (int *,int ) ;
 int cpu_to_le32 (int ) ;
 int megasas_internal_reset_defer_cmds (struct megasas_instance*) ;
 int process_fw_state_change_wq (int *) ;
 int stub1 (struct megasas_instance*) ;

__attribute__((used)) static void megasas_do_ocr(struct megasas_instance *instance)
{
 if ((instance->pdev->device == PCI_DEVICE_ID_LSI_SAS1064R) ||
 (instance->pdev->device == PCI_DEVICE_ID_DELL_PERC5) ||
 (instance->pdev->device == PCI_DEVICE_ID_LSI_VERDE_ZCR)) {
  *instance->consumer = cpu_to_le32(MEGASAS_ADPRESET_INPROG_SIGN);
 }
 instance->instancet->disable_intr(instance);
 atomic_set(&instance->adprecovery, MEGASAS_ADPRESET_SM_INFAULT);
 instance->issuepend_done = 0;

 atomic_set(&instance->fw_outstanding, 0);
 megasas_internal_reset_defer_cmds(instance);
 process_fw_state_change_wq(&instance->work_init);
}
