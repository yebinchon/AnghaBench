
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nvme_result {int u32; } ;
typedef int u32 ;
struct nvme_ctrl {int aen_result; int async_event_work; } ;
typedef int __le16 ;







 int NVME_SC_SUCCESS ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int nvme_handle_aen_notice (struct nvme_ctrl*,int) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;
 int trace_nvme_async_event (struct nvme_ctrl*,int) ;

void nvme_complete_async_event(struct nvme_ctrl *ctrl, __le16 status,
  volatile union nvme_result *res)
{
 u32 result = le32_to_cpu(res->u32);
 u32 aer_type = result & 0x07;

 if (le16_to_cpu(status) >> 1 != NVME_SC_SUCCESS)
  return;

 switch (aer_type) {
 case 130:
  nvme_handle_aen_notice(ctrl, result);
  break;
 case 131:
 case 129:
 case 132:
 case 128:
  trace_nvme_async_event(ctrl, aer_type);
  ctrl->aen_result = result;
  break;
 default:
  break;
 }
 queue_work(nvme_wq, &ctrl->async_event_work);
}
