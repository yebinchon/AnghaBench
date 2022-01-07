
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int s_bdev; } ;
struct fs_info_t {int dev_ejected; } ;
struct bd_info_t {int sector_size_bits; int opened; } ;
struct exfat_sb_info {long debug_flags; struct fs_info_t fs_info; struct bd_info_t bd_info; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 long EXFAT_DEBUGFLAGS_ERROR_RW ;
 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 int FFS_MEDIAERR ;
 int WARN (int,char*) ;
 struct buffer_head* __bread (int ,int ,int) ;
 int __brelse (struct buffer_head*) ;
 struct buffer_head* __getblk (int ,int ,int) ;

int bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
       u32 num_secs, bool read)
{
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 if (!p_bd->opened)
  return FFS_MEDIAERR;

 if (*bh)
  __brelse(*bh);

 if (read)
  *bh = __bread(sb->s_bdev, secno,
         num_secs << p_bd->sector_size_bits);
 else
  *bh = __getblk(sb->s_bdev, secno,
          num_secs << p_bd->sector_size_bits);

 if (*bh)
  return 0;

 WARN(!p_fs->dev_ejected,
      "[EXFAT] No bh, device seems wrong or to be ejected.\n");

 return FFS_MEDIAERR;
}
