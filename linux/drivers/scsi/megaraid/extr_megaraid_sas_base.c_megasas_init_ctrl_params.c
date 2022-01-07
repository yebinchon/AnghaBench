
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {int issuepend_done; int flag_ieee; int unload; int disableOnlineCtrlReset; int smp_affinity_enable; int msix_load_balance; scalar_t__ adapter_type; int work_init; scalar_t__ UnevenSpanSupport; scalar_t__ last_time; scalar_t__ flag; TYPE_1__* pdev; int reset_mutex; int completion_lock; int stream_lock; int hba_lock; int mfi_pool_lock; int crashdump_lock; int abort_cmd_wait_q; int int_cmd_wait_q; int total_io_count; int fw_outstanding; int internal_reset_pending_q; int cmd_pool; int adprecovery; int fw_crash_state; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MEGASAS_HBA_OPERATIONAL ;
 scalar_t__ MFI_SERIES ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0071SKINNY ;
 scalar_t__ PCI_DEVICE_ID_LSI_SAS0073SKINNY ;
 int UNAVAILABLE ;
 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ megasas_dbg_lvl ;
 int megasas_fusion_ocr_wq ;
 scalar_t__ megasas_poll_wait_aen ;
 int mutex_init (int *) ;
 int process_fw_state_change_wq ;
 scalar_t__ smp_affinity_enable ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void megasas_init_ctrl_params(struct megasas_instance *instance)
{
 instance->fw_crash_state = UNAVAILABLE;

 megasas_poll_wait_aen = 0;
 instance->issuepend_done = 1;
 atomic_set(&instance->adprecovery, MEGASAS_HBA_OPERATIONAL);




 INIT_LIST_HEAD(&instance->cmd_pool);
 INIT_LIST_HEAD(&instance->internal_reset_pending_q);

 atomic_set(&instance->fw_outstanding, 0);
 atomic64_set(&instance->total_io_count, 0);

 init_waitqueue_head(&instance->int_cmd_wait_q);
 init_waitqueue_head(&instance->abort_cmd_wait_q);

 spin_lock_init(&instance->crashdump_lock);
 spin_lock_init(&instance->mfi_pool_lock);
 spin_lock_init(&instance->hba_lock);
 spin_lock_init(&instance->stream_lock);
 spin_lock_init(&instance->completion_lock);

 mutex_init(&instance->reset_mutex);

 if ((instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0073SKINNY) ||
     (instance->pdev->device == PCI_DEVICE_ID_LSI_SAS0071SKINNY))
  instance->flag_ieee = 1;

 megasas_dbg_lvl = 0;
 instance->flag = 0;
 instance->unload = 1;
 instance->last_time = 0;
 instance->disableOnlineCtrlReset = 1;
 instance->UnevenSpanSupport = 0;
 instance->smp_affinity_enable = smp_affinity_enable ? 1 : 0;
 instance->msix_load_balance = 0;

 if (instance->adapter_type != MFI_SERIES)
  INIT_WORK(&instance->work_init, megasas_fusion_ocr_wq);
 else
  INIT_WORK(&instance->work_init, process_fw_state_change_wq);
}
