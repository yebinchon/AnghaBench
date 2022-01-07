
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int objectid; } ;
struct btrfs_fs_info {int qgroup_flags; int qgroup_rescan_running; TYPE_1__ qgroup_rescan_work; int qgroup_rescan_lock; int qgroup_lock; int qgroup_rescan_completion; TYPE_1__ qgroup_rescan_progress; } ;


 int BTRFS_QGROUP_STATUS_FLAG_ON ;
 int BTRFS_QGROUP_STATUS_FLAG_RESCAN ;
 int EINPROGRESS ;
 int EINVAL ;
 int btrfs_init_work (TYPE_1__*,int ,int ,int *,int *) ;
 int btrfs_qgroup_rescan_helper ;
 int btrfs_qgroup_rescan_worker ;
 int btrfs_warn (struct btrfs_fs_info*,char*) ;
 int init_completion (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
qgroup_rescan_init(struct btrfs_fs_info *fs_info, u64 progress_objectid,
     int init_flags)
{
 int ret = 0;

 if (!init_flags) {

  if (!(fs_info->qgroup_flags &
        BTRFS_QGROUP_STATUS_FLAG_RESCAN)) {
   btrfs_warn(fs_info,
   "qgroup rescan init failed, qgroup is not enabled");
   ret = -EINVAL;
  } else if (!(fs_info->qgroup_flags &
        BTRFS_QGROUP_STATUS_FLAG_ON)) {
   btrfs_warn(fs_info,
   "qgroup rescan init failed, qgroup rescan is not queued");
   ret = -EINVAL;
  }

  if (ret)
   return ret;
 }

 mutex_lock(&fs_info->qgroup_rescan_lock);
 spin_lock(&fs_info->qgroup_lock);

 if (init_flags) {
  if (fs_info->qgroup_flags & BTRFS_QGROUP_STATUS_FLAG_RESCAN) {
   btrfs_warn(fs_info,
       "qgroup rescan is already in progress");
   ret = -EINPROGRESS;
  } else if (!(fs_info->qgroup_flags &
        BTRFS_QGROUP_STATUS_FLAG_ON)) {
   btrfs_warn(fs_info,
   "qgroup rescan init failed, qgroup is not enabled");
   ret = -EINVAL;
  }

  if (ret) {
   spin_unlock(&fs_info->qgroup_lock);
   mutex_unlock(&fs_info->qgroup_rescan_lock);
   return ret;
  }
  fs_info->qgroup_flags |= BTRFS_QGROUP_STATUS_FLAG_RESCAN;
 }

 memset(&fs_info->qgroup_rescan_progress, 0,
  sizeof(fs_info->qgroup_rescan_progress));
 fs_info->qgroup_rescan_progress.objectid = progress_objectid;
 init_completion(&fs_info->qgroup_rescan_completion);
 fs_info->qgroup_rescan_running = 1;

 spin_unlock(&fs_info->qgroup_lock);
 mutex_unlock(&fs_info->qgroup_rescan_lock);

 memset(&fs_info->qgroup_rescan_work, 0,
        sizeof(fs_info->qgroup_rescan_work));
 btrfs_init_work(&fs_info->qgroup_rescan_work,
   btrfs_qgroup_rescan_helper,
   btrfs_qgroup_rescan_worker, ((void*)0), ((void*)0));
 return 0;
}
