
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int * effects; } ;


 int GFP_KERNEL ;
 int NVME_LOG_CMD_EFFECTS ;
 int NVME_NSID_ALL ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int nvme_get_log (struct nvme_ctrl*,int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
{
 int ret;

 if (!ctrl->effects)
  ctrl->effects = kzalloc(sizeof(*ctrl->effects), GFP_KERNEL);

 if (!ctrl->effects)
  return 0;

 ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_CMD_EFFECTS, 0,
   ctrl->effects, sizeof(*ctrl->effects), 0);
 if (ret) {
  kfree(ctrl->effects);
  ctrl->effects = ((void*)0);
 }
 return ret;
}
