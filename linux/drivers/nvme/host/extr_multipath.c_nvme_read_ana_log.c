
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvme_ctrl {int anatt; int ana_lock; int anatt_timer; int device; int ana_log_size; int ana_log_buf; } ;


 int HZ ;
 int NVME_LOG_ANA ;
 int NVME_NSID_ALL ;
 int del_timer_sync (int *) ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_get_log (struct nvme_ctrl*,int ,int ,int ,int ,int ,int ) ;
 int nvme_parse_ana_log (struct nvme_ctrl*,scalar_t__*,int ) ;
 int nvme_update_ana_state ;

__attribute__((used)) static int nvme_read_ana_log(struct nvme_ctrl *ctrl)
{
 u32 nr_change_groups = 0;
 int error;

 mutex_lock(&ctrl->ana_lock);
 error = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_ANA, 0,
   ctrl->ana_log_buf, ctrl->ana_log_size, 0);
 if (error) {
  dev_warn(ctrl->device, "Failed to get ANA log: %d\n", error);
  goto out_unlock;
 }

 error = nvme_parse_ana_log(ctrl, &nr_change_groups,
   nvme_update_ana_state);
 if (error)
  goto out_unlock;
 if (nr_change_groups)
  mod_timer(&ctrl->anatt_timer, ctrl->anatt * HZ * 2 + jiffies);
 else
  del_timer_sync(&ctrl->anatt_timer);
out_unlock:
 mutex_unlock(&ctrl->ana_lock);
 return error;
}
