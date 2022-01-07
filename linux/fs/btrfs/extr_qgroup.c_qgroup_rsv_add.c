
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int * values; } ;
struct btrfs_qgroup {TYPE_1__ rsv; } ;
struct btrfs_fs_info {int dummy; } ;
typedef enum btrfs_qgroup_rsv_type { ____Placeholder_btrfs_qgroup_rsv_type } btrfs_qgroup_rsv_type ;


 int trace_qgroup_update_reserve (struct btrfs_fs_info*,struct btrfs_qgroup*,scalar_t__,int) ;

__attribute__((used)) static void qgroup_rsv_add(struct btrfs_fs_info *fs_info,
      struct btrfs_qgroup *qgroup, u64 num_bytes,
      enum btrfs_qgroup_rsv_type type)
{
 trace_qgroup_update_reserve(fs_info, qgroup, num_bytes, type);
 qgroup->rsv.values[type] += num_bytes;
}
