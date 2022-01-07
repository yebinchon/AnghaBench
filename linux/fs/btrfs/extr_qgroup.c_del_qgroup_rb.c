
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_qgroup {int node; } ;
struct btrfs_fs_info {int qgroup_tree; } ;


 int ENOENT ;
 int __del_qgroup_rb (struct btrfs_qgroup*) ;
 struct btrfs_qgroup* find_qgroup_rb (struct btrfs_fs_info*,int ) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static int del_qgroup_rb(struct btrfs_fs_info *fs_info, u64 qgroupid)
{
 struct btrfs_qgroup *qgroup = find_qgroup_rb(fs_info, qgroupid);

 if (!qgroup)
  return -ENOENT;

 rb_erase(&qgroup->node, &fs_info->qgroup_tree);
 __del_qgroup_rb(qgroup);
 return 0;
}
