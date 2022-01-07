
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int qgroup_ioctl_lock; } ;


 int __del_qgroup_relation (struct btrfs_trans_handle*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_del_qgroup_relation(struct btrfs_trans_handle *trans, u64 src,
         u64 dst)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 int ret = 0;

 mutex_lock(&fs_info->qgroup_ioctl_lock);
 ret = __del_qgroup_relation(trans, src, dst);
 mutex_unlock(&fs_info->qgroup_ioctl_lock);

 return ret;
}
