
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_device {int request_queue; TYPE_1__* host; } ;
struct megasas_instance {scalar_t__ nvme_page_size; TYPE_2__* tgt_prop; } ;
struct TYPE_4__ {int max_io_size_kb; } ;
struct TYPE_3__ {int host_no; } ;


 int HZ ;
 int MR_DEFAULT_NVME_MDTS_KB ;
 int blk_queue_rq_timeout (int ,int) ;
 int le32_to_cpu (int ) ;
 struct megasas_instance* megasas_lookup_instance (int ) ;
 int megasas_set_fw_assisted_qd (struct scsi_device*,int) ;
 int megasas_set_nvme_device_properties (struct scsi_device*,int) ;
 int scmd_timeout ;

__attribute__((used)) static void megasas_set_static_target_properties(struct scsi_device *sdev,
       bool is_target_prop)
{
 u32 max_io_size_kb = MR_DEFAULT_NVME_MDTS_KB;
 struct megasas_instance *instance;

 instance = megasas_lookup_instance(sdev->host->host_no);




 blk_queue_rq_timeout(sdev->request_queue, scmd_timeout * HZ);




 if (is_target_prop)
  max_io_size_kb = le32_to_cpu(instance->tgt_prop->max_io_size_kb);

 if (instance->nvme_page_size && max_io_size_kb)
  megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));

 megasas_set_fw_assisted_qd(sdev, is_target_prop);
}
