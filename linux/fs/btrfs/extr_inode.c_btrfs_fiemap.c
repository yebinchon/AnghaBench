
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;
typedef int __u64 ;


 int BTRFS_FIEMAP_FLAGS ;
 int extent_fiemap (struct inode*,struct fiemap_extent_info*,int ,int ) ;
 int fiemap_check_flags (struct fiemap_extent_info*,int ) ;

__attribute__((used)) static int btrfs_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
  __u64 start, __u64 len)
{
 int ret;

 ret = fiemap_check_flags(fieinfo, BTRFS_FIEMAP_FLAGS);
 if (ret)
  return ret;

 return extent_fiemap(inode, fieinfo, start, len);
}
