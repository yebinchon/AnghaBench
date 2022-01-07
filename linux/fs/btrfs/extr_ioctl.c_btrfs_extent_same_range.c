
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;


 int btrfs_clone (struct inode*,struct inode*,int ,int ,int ,int ,int) ;
 int btrfs_double_extent_lock (struct inode*,int ,struct inode*,int ,int ) ;
 int btrfs_double_extent_unlock (struct inode*,int ,struct inode*,int ,int ) ;

__attribute__((used)) static int btrfs_extent_same_range(struct inode *src, u64 loff, u64 len,
       struct inode *dst, u64 dst_loff)
{
 int ret;





 btrfs_double_extent_lock(src, loff, dst, dst_loff, len);
 ret = btrfs_clone(src, dst, loff, len, len, dst_loff, 1);
 btrfs_double_extent_unlock(src, loff, dst, dst_loff, len);

 return ret;
}
