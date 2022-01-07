
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_bdev; } ;
struct bd_info_t {int opened; } ;
struct exfat_sb_info {long debug_flags; struct bd_info_t bd_info; } ;


 long EXFAT_DEBUGFLAGS_ERROR_RW ;
 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 int FFS_MEDIAERR ;
 int sync_blockdev (int ) ;

int bdev_sync(struct super_block *sb)
{
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 if (!p_bd->opened)
  return FFS_MEDIAERR;

 return sync_blockdev(sb->s_bdev);
}
