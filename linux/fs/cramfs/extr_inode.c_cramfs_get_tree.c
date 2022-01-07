
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int CONFIG_CRAMFS_BLOCKDEV ;
 int CONFIG_CRAMFS_MTD ;
 int ENOPROTOOPT ;
 scalar_t__ IS_ENABLED (int ) ;
 int cramfs_blkdev_fill_super ;
 int cramfs_mtd_fill_super ;
 int get_tree_bdev (struct fs_context*,int ) ;
 int get_tree_mtd (struct fs_context*,int ) ;

__attribute__((used)) static int cramfs_get_tree(struct fs_context *fc)
{
 int ret = -ENOPROTOOPT;

 if (IS_ENABLED(CONFIG_CRAMFS_MTD)) {
  ret = get_tree_mtd(fc, cramfs_mtd_fill_super);
  if (ret < 0)
   return ret;
 }
 if (IS_ENABLED(CONFIG_CRAMFS_BLOCKDEV))
  ret = get_tree_bdev(fc, cramfs_blkdev_fill_super);
 return ret;
}
