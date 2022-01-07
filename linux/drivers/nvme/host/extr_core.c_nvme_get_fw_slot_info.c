
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fw_slot_info_log {int dummy; } ;
struct nvme_ctrl {int device; } ;


 int GFP_KERNEL ;
 int NVME_LOG_FW_SLOT ;
 int NVME_NSID_ALL ;
 int dev_warn (int ,char*) ;
 int kfree (struct nvme_fw_slot_info_log*) ;
 struct nvme_fw_slot_info_log* kmalloc (int,int ) ;
 scalar_t__ nvme_get_log (struct nvme_ctrl*,int ,int ,int ,struct nvme_fw_slot_info_log*,int,int ) ;

__attribute__((used)) static void nvme_get_fw_slot_info(struct nvme_ctrl *ctrl)
{
 struct nvme_fw_slot_info_log *log;

 log = kmalloc(sizeof(*log), GFP_KERNEL);
 if (!log)
  return;

 if (nvme_get_log(ctrl, NVME_NSID_ALL, 0, NVME_LOG_FW_SLOT, log,
   sizeof(*log), 0))
  dev_warn(ctrl->device, "Get FW SLOT INFO log error\n");
 kfree(log);
}
