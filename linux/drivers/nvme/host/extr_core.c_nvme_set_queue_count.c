
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_ctrl {int device; } ;


 int NVME_FEAT_NUM_QUEUES ;
 int dev_err (int ,char*,int) ;
 int min (int,int) ;
 int nvme_set_features (struct nvme_ctrl*,int ,int,int *,int ,int*) ;

int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
{
 u32 q_count = (*count - 1) | ((*count - 1) << 16);
 u32 result;
 int status, nr_io_queues;

 status = nvme_set_features(ctrl, NVME_FEAT_NUM_QUEUES, q_count, ((void*)0), 0,
   &result);
 if (status < 0)
  return status;






 if (status > 0) {
  dev_err(ctrl->device, "Could not set queue count (%d)\n", status);
  *count = 0;
 } else {
  nr_io_queues = min(result & 0xffff, result >> 16) + 1;
  *count = min(*count, nr_io_queues);
 }

 return 0;
}
