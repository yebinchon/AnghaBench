
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_ctrl {int oaes; int async_event_work; int device; } ;


 int NVME_AEN_SUPPORTED ;
 int NVME_FEAT_ASYNC_EVENT ;
 int dev_warn (int ,char*,int) ;
 int nvme_set_features (struct nvme_ctrl*,int ,int,int *,int ,int*) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nvme_enable_aen(struct nvme_ctrl *ctrl)
{
 u32 result, supported_aens = ctrl->oaes & NVME_AEN_SUPPORTED;
 int status;

 if (!supported_aens)
  return;

 status = nvme_set_features(ctrl, NVME_FEAT_ASYNC_EVENT, supported_aens,
   ((void*)0), 0, &result);
 if (status)
  dev_warn(ctrl->device, "Failed to configure AEN (cfg %x)\n",
    supported_aens);

 queue_work(nvme_wq, &ctrl->async_event_work);
}
