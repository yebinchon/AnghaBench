
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nvmet_ctrl {scalar_t__ nr_changed_ns; scalar_t__* changed_ns_list; int lock; } ;
typedef scalar_t__ __le32 ;


 scalar_t__ NVME_MAX_CHANGED_NAMESPACES ;
 scalar_t__ U32_MAX ;
 scalar_t__ cpu_to_le32 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void nvmet_add_to_changed_ns_log(struct nvmet_ctrl *ctrl, __le32 nsid)
{
 u32 i;

 mutex_lock(&ctrl->lock);
 if (ctrl->nr_changed_ns > NVME_MAX_CHANGED_NAMESPACES)
  goto out_unlock;

 for (i = 0; i < ctrl->nr_changed_ns; i++) {
  if (ctrl->changed_ns_list[i] == nsid)
   goto out_unlock;
 }

 if (ctrl->nr_changed_ns == NVME_MAX_CHANGED_NAMESPACES) {
  ctrl->changed_ns_list[0] = cpu_to_le32(0xffffffff);
  ctrl->nr_changed_ns = U32_MAX;
  goto out_unlock;
 }

 ctrl->changed_ns_list[ctrl->nr_changed_ns++] = nsid;
out_unlock:
 mutex_unlock(&ctrl->lock);
}
