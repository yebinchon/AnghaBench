
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct cramfs_sb_info {scalar_t__ linear_virt_addr; } ;


 int CONFIG_CRAMFS_BLOCKDEV ;
 int CONFIG_CRAMFS_MTD ;
 struct cramfs_sb_info* CRAMFS_SB (struct super_block*) ;
 scalar_t__ IS_ENABLED (int ) ;
 void* cramfs_blkdev_read (struct super_block*,unsigned int,unsigned int) ;
 void* cramfs_direct_read (struct super_block*,unsigned int,unsigned int) ;

__attribute__((used)) static void *cramfs_read(struct super_block *sb, unsigned int offset,
    unsigned int len)
{
 struct cramfs_sb_info *sbi = CRAMFS_SB(sb);

 if (IS_ENABLED(CONFIG_CRAMFS_MTD) && sbi->linear_virt_addr)
  return cramfs_direct_read(sb, offset, len);
 else if (IS_ENABLED(CONFIG_CRAMFS_BLOCKDEV))
  return cramfs_blkdev_read(sb, offset, len);
 else
  return ((void*)0);
}
