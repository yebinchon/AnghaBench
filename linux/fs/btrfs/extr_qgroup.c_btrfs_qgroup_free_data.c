
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;


 int __btrfs_qgroup_release_data (struct inode*,struct extent_changeset*,int ,int ,int) ;

int btrfs_qgroup_free_data(struct inode *inode,
   struct extent_changeset *reserved, u64 start, u64 len)
{
 return __btrfs_qgroup_release_data(inode, reserved, start, len, 1);
}
