
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;


 int __btrfs_qgroup_release_data (struct inode*,int *,int ,int ,int ) ;

int btrfs_qgroup_release_data(struct inode *inode, u64 start, u64 len)
{
 return __btrfs_qgroup_release_data(inode, ((void*)0), start, len, 0);
}
