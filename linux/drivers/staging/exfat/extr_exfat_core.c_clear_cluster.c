
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ root_start_sector; scalar_t__ data_start_sector; scalar_t__ sectors_per_clu; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bd_info_t {int sector_size; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;


 scalar_t__ CLUSTER_32 (int ) ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 scalar_t__ FFS_SUCCESS ;
 scalar_t__ START_SECTOR (scalar_t__) ;
 int brelse (struct buffer_head*) ;
 int memset (char*,int,int ) ;
 scalar_t__ sector_read (struct super_block*,scalar_t__,struct buffer_head**,int ) ;
 scalar_t__ sector_write (struct super_block*,scalar_t__,struct buffer_head*,int ) ;

s32 clear_cluster(struct super_block *sb, u32 clu)
{
 sector_t s, n;
 s32 ret = FFS_SUCCESS;
 struct buffer_head *tmp_bh = ((void*)0);
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);

 if (clu == CLUSTER_32(0)) {
  s = p_fs->root_start_sector;
  n = p_fs->data_start_sector;
 } else {
  s = START_SECTOR(clu);
  n = s + p_fs->sectors_per_clu;
 }

 for (; s < n; s++) {
  ret = sector_read(sb, s, &tmp_bh, 0);
  if (ret != FFS_SUCCESS)
   return ret;

  memset((char *)tmp_bh->b_data, 0x0, p_bd->sector_size);
  ret = sector_write(sb, s, tmp_bh, 0);
  if (ret != FFS_SUCCESS)
   break;
 }

 brelse(tmp_bh);
 return ret;
}
