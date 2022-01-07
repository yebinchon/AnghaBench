
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_ctrl {int aen_result; int device; int ana_work; int ana_log_buf; int fw_act_work; int events; } ;






 int NVME_CTRL_RESETTING ;
 int dev_warn (int ,char*,int) ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_queue_scan (struct nvme_ctrl*) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;
 int set_bit (int const,int *) ;
 int trace_nvme_async_event (struct nvme_ctrl*,int) ;

__attribute__((used)) static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
{
 u32 aer_notice_type = (result & 0xff00) >> 8;

 trace_nvme_async_event(ctrl, aer_notice_type);

 switch (aer_notice_type) {
 case 128:
  set_bit(128, &ctrl->events);
  nvme_queue_scan(ctrl);
  break;
 case 129:





  if (nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
   queue_work(nvme_wq, &ctrl->fw_act_work);
  break;







 case 130:
  ctrl->aen_result = result;
  break;
 default:
  dev_warn(ctrl->device, "async event result %08x\n", result);
 }
}
