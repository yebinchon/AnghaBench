
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct megasas_instance {int mfiStatus; scalar_t__ disableOnlineCtrlReset; int isr_tasklet; TYPE_2__* pdev; int work_init; int adprecovery; int fw_outstanding; scalar_t__ issuepend_done; TYPE_1__* instancet; int * consumer; int msix_vectors; int reg_set; } ;
struct TYPE_4__ {scalar_t__ device; int dev; } ;
struct TYPE_3__ {int (* check_reset ) (struct megasas_instance*,int ) ;int (* clear_intr ) (struct megasas_instance*) ;int (* read_fw_status_reg ) (struct megasas_instance*) ;int (* disable_intr ) (struct megasas_instance*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MEGASAS_ADPRESET_INPROG_SIGN ;
 int MEGASAS_ADPRESET_SM_INFAULT ;
 int MFI_INTR_FLAG_FIRMWARE_STATE_CHANGE ;
 int MFI_STATE_FAULT ;
 int MFI_STATE_MASK ;
 scalar_t__ PCI_DEVICE_ID_DELL_PERC5 ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS1064R ;
 scalar_t__ PCI_DEVICE_ID_LSI_VERDE_ZCR ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cpu_to_le32 (int ) ;
 int dev_notice (int *,char*,...) ;
 int megasas_internal_reset_defer_cmds (struct megasas_instance*) ;
 int schedule_work (int *) ;
 int stub1 (struct megasas_instance*,int ) ;
 int stub2 (struct megasas_instance*) ;
 int stub3 (struct megasas_instance*) ;
 int stub4 (struct megasas_instance*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int
megasas_deplete_reply_queue(struct megasas_instance *instance,
     u8 alt_status)
{
 u32 mfiStatus;
 u32 fw_state;

 if ((mfiStatus = instance->instancet->check_reset(instance,
     instance->reg_set)) == 1) {
  return IRQ_HANDLED;
 }

 mfiStatus = instance->instancet->clear_intr(instance);
 if (mfiStatus == 0) {

  if (!instance->msix_vectors)
   return IRQ_NONE;
 }

 instance->mfiStatus = mfiStatus;

 if ((mfiStatus & MFI_INTR_FLAG_FIRMWARE_STATE_CHANGE)) {
  fw_state = instance->instancet->read_fw_status_reg(
    instance) & MFI_STATE_MASK;

  if (fw_state != MFI_STATE_FAULT) {
   dev_notice(&instance->pdev->dev, "fw state:%x\n",
      fw_state);
  }

  if ((fw_state == MFI_STATE_FAULT) &&
    (instance->disableOnlineCtrlReset == 0)) {
   dev_notice(&instance->pdev->dev, "wait adp restart\n");

   if ((instance->pdev->device ==
     PCI_DEVICE_ID_LSI_SAS1064R) ||
    (instance->pdev->device ==
     PCI_DEVICE_ID_DELL_PERC5) ||
    (instance->pdev->device ==
     PCI_DEVICE_ID_LSI_VERDE_ZCR)) {

    *instance->consumer =
     cpu_to_le32(MEGASAS_ADPRESET_INPROG_SIGN);
   }


   instance->instancet->disable_intr(instance);
   atomic_set(&instance->adprecovery, MEGASAS_ADPRESET_SM_INFAULT);
   instance->issuepend_done = 0;

   atomic_set(&instance->fw_outstanding, 0);
   megasas_internal_reset_defer_cmds(instance);

   dev_notice(&instance->pdev->dev, "fwState=%x, stage:%d\n",
     fw_state, atomic_read(&instance->adprecovery));

   schedule_work(&instance->work_init);
   return IRQ_HANDLED;

  } else {
   dev_notice(&instance->pdev->dev, "fwstate:%x, dis_OCR=%x\n",
    fw_state, instance->disableOnlineCtrlReset);
  }
 }

 tasklet_schedule(&instance->isr_tasklet);
 return IRQ_HANDLED;
}
