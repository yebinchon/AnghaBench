
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct nvme_ctrl {int oncs; int device; } ;
typedef int __le64 ;


 int NVME_CTRL_ONCS_TIMESTAMP ;
 int NVME_FEAT_TIMESTAMP ;
 int cpu_to_le64 (int ) ;
 int dev_warn_once (int ,char*,int) ;
 int ktime_get_real () ;
 int ktime_to_ms (int ) ;
 int nvme_set_features (struct nvme_ctrl*,int ,int ,int *,int,int *) ;

__attribute__((used)) static int nvme_configure_timestamp(struct nvme_ctrl *ctrl)
{
 __le64 ts;
 int ret;

 if (!(ctrl->oncs & NVME_CTRL_ONCS_TIMESTAMP))
  return 0;

 ts = cpu_to_le64(ktime_to_ms(ktime_get_real()));
 ret = nvme_set_features(ctrl, NVME_FEAT_TIMESTAMP, 0, &ts, sizeof(ts),
   ((void*)0));
 if (ret)
  dev_warn_once(ctrl->device,
   "could not set timestamp (%d)\n", ret);
 return ret;
}
