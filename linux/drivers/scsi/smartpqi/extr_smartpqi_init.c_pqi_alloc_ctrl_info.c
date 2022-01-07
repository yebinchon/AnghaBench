
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int max_msix_vectors; int irq_mode; scalar_t__ ctrl_id; int raid_bypass_retry_work; int raid_bypass_retry_list_lock; int raid_bypass_retry_list; int block_requests_wait; int sync_request_sem; int ctrl_offline_work; int heartbeat_timer; int update_time_work; int rescan_work; int num_interrupts; int event_work; int scsi_device_list_lock; int scsi_device_list; int ofa_mutex; int lun_reset_mutex; int scan_mutex; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IRQ_MODE_NONE ;
 int PQI_MAX_MSIX_VECTORS ;
 int PQI_RESERVED_IO_SLOTS_SYNCHRONOUS_REQUESTS ;
 scalar_t__ atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct pqi_ctrl_info* kzalloc_node (int,int ,int) ;
 int mutex_init (int *) ;
 int pqi_controller_count ;
 int pqi_ctrl_offline_worker ;
 int pqi_event_worker ;
 int pqi_heartbeat_timer_handler ;
 int pqi_raid_bypass_retry_worker ;
 int pqi_rescan_worker ;
 int pqi_update_time_worker ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct pqi_ctrl_info *pqi_alloc_ctrl_info(int numa_node)
{
 struct pqi_ctrl_info *ctrl_info;

 ctrl_info = kzalloc_node(sizeof(struct pqi_ctrl_info),
   GFP_KERNEL, numa_node);
 if (!ctrl_info)
  return ((void*)0);

 mutex_init(&ctrl_info->scan_mutex);
 mutex_init(&ctrl_info->lun_reset_mutex);
 mutex_init(&ctrl_info->ofa_mutex);

 INIT_LIST_HEAD(&ctrl_info->scsi_device_list);
 spin_lock_init(&ctrl_info->scsi_device_list_lock);

 INIT_WORK(&ctrl_info->event_work, pqi_event_worker);
 atomic_set(&ctrl_info->num_interrupts, 0);

 INIT_DELAYED_WORK(&ctrl_info->rescan_work, pqi_rescan_worker);
 INIT_DELAYED_WORK(&ctrl_info->update_time_work, pqi_update_time_worker);

 timer_setup(&ctrl_info->heartbeat_timer, pqi_heartbeat_timer_handler, 0);
 INIT_WORK(&ctrl_info->ctrl_offline_work, pqi_ctrl_offline_worker);

 sema_init(&ctrl_info->sync_request_sem,
  PQI_RESERVED_IO_SLOTS_SYNCHRONOUS_REQUESTS);
 init_waitqueue_head(&ctrl_info->block_requests_wait);

 INIT_LIST_HEAD(&ctrl_info->raid_bypass_retry_list);
 spin_lock_init(&ctrl_info->raid_bypass_retry_list_lock);
 INIT_WORK(&ctrl_info->raid_bypass_retry_work,
  pqi_raid_bypass_retry_worker);

 ctrl_info->ctrl_id = atomic_inc_return(&pqi_controller_count) - 1;
 ctrl_info->irq_mode = IRQ_MODE_NONE;
 ctrl_info->max_msix_vectors = PQI_MAX_MSIX_VECTORS;

 return ctrl_info;
}
