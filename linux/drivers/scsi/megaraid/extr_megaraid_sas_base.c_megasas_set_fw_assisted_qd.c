
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct scsi_device {struct MR_PRIV_DEVICE* hostdata; TYPE_1__* host; } ;
struct megasas_instance {TYPE_3__* host; scalar_t__ enable_sdev_max_qd; TYPE_2__* tgt_prop; } ;
struct MR_PRIV_DEVICE {int interface_type; } ;
struct TYPE_6__ {scalar_t__ can_queue; } ;
struct TYPE_5__ {int device_qdepth; } ;
struct TYPE_4__ {int host_no; } ;


 scalar_t__ MEGASAS_DEFAULT_CMD_PER_LUN ;
 scalar_t__ MEGASAS_NVME_QD ;
 scalar_t__ MEGASAS_SAS_QD ;
 scalar_t__ MEGASAS_SATA_QD ;



 int UNKNOWN_DRIVE ;
 scalar_t__ le32_to_cpu (int ) ;
 struct megasas_instance* megasas_lookup_instance (int ) ;
 int scsi_change_queue_depth (struct scsi_device*,scalar_t__) ;

__attribute__((used)) static void megasas_set_fw_assisted_qd(struct scsi_device *sdev,
       bool is_target_prop)
{
 u8 interface_type;
 u32 device_qd = MEGASAS_DEFAULT_CMD_PER_LUN;
 u32 tgt_device_qd;
 struct megasas_instance *instance;
 struct MR_PRIV_DEVICE *mr_device_priv_data;

 instance = megasas_lookup_instance(sdev->host->host_no);
 mr_device_priv_data = sdev->hostdata;
 interface_type = mr_device_priv_data->interface_type;

 switch (interface_type) {
 case 129:
  device_qd = MEGASAS_SAS_QD;
  break;
 case 128:
  device_qd = MEGASAS_SATA_QD;
  break;
 case 130:
  device_qd = MEGASAS_NVME_QD;
  break;
 }

 if (is_target_prop) {
  tgt_device_qd = le32_to_cpu(instance->tgt_prop->device_qdepth);
  if (tgt_device_qd &&
      (tgt_device_qd <= instance->host->can_queue))
   device_qd = tgt_device_qd;
 }

 if (instance->enable_sdev_max_qd && interface_type != UNKNOWN_DRIVE)
  device_qd = instance->host->can_queue;

 scsi_change_queue_depth(sdev, device_qd);
}
