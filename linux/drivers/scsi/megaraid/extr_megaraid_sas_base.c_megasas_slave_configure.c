
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct scsi_device {scalar_t__ type; int channel; size_t id; TYPE_1__* host; } ;
struct megasas_instance {int reset_mutex; scalar_t__ nvme_page_size; scalar_t__ tgt_prop; scalar_t__ pd_info; TYPE_2__* pd_list; scalar_t__ pd_list_not_supported; } ;
struct TYPE_4__ {scalar_t__ driveState; } ;
struct TYPE_3__ {int host_no; } ;


 int DCMD_FAILED ;
 int DCMD_SUCCESS ;
 int ENXIO ;
 int MEGASAS_IS_LOGICAL (struct scsi_device*) ;
 int MEGASAS_MAX_DEV_PER_CHANNEL ;
 scalar_t__ MR_PD_STATE_SYSTEM ;
 scalar_t__ TYPE_DISK ;
 int megasas_get_pd_info (struct megasas_instance*,struct scsi_device*) ;
 int megasas_get_target_prop (struct megasas_instance*,struct scsi_device*) ;
 struct megasas_instance* megasas_lookup_instance (int ) ;
 int megasas_set_dynamic_target_properties (struct scsi_device*,int) ;
 int megasas_set_static_target_properties (struct scsi_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int megasas_slave_configure(struct scsi_device *sdev)
{
 u16 pd_index = 0;
 struct megasas_instance *instance;
 int ret_target_prop = DCMD_FAILED;
 bool is_target_prop = 0;

 instance = megasas_lookup_instance(sdev->host->host_no);
 if (instance->pd_list_not_supported) {
  if (!MEGASAS_IS_LOGICAL(sdev) && sdev->type == TYPE_DISK) {
   pd_index = (sdev->channel * MEGASAS_MAX_DEV_PER_CHANNEL) +
    sdev->id;
   if (instance->pd_list[pd_index].driveState !=
    MR_PD_STATE_SYSTEM)
    return -ENXIO;
  }
 }

 mutex_lock(&instance->reset_mutex);

 if ((instance->pd_info) && !MEGASAS_IS_LOGICAL(sdev))
  megasas_get_pd_info(instance, sdev);




 if ((instance->tgt_prop) && (instance->nvme_page_size))
  ret_target_prop = megasas_get_target_prop(instance, sdev);

 is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? 1 : 0;
 megasas_set_static_target_properties(sdev, is_target_prop);


 megasas_set_dynamic_target_properties(sdev, is_target_prop);

 mutex_unlock(&instance->reset_mutex);

 return 0;
}
