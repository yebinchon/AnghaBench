
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_qgroup {int dirty; } ;
struct btrfs_fs_info {int dirty_qgroups; } ;


 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void qgroup_dirty(struct btrfs_fs_info *fs_info,
    struct btrfs_qgroup *qgroup)
{
 if (list_empty(&qgroup->dirty))
  list_add(&qgroup->dirty, &fs_info->dirty_qgroups);
}
