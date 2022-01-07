
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * values; } ;
struct btrfs_qgroup {TYPE_1__ rsv; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_QGROUP_RSV_LAST ;
 int qgroup_rsv_add (struct btrfs_fs_info*,struct btrfs_qgroup*,int ,int) ;

__attribute__((used)) static void qgroup_rsv_add_by_qgroup(struct btrfs_fs_info *fs_info,
         struct btrfs_qgroup *dest,
         struct btrfs_qgroup *src)
{
 int i;

 for (i = 0; i < BTRFS_QGROUP_RSV_LAST; i++)
  qgroup_rsv_add(fs_info, dest, src->rsv.values[i], i);
}
