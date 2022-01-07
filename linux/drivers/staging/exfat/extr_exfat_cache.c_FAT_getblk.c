
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct super_block {int dummy; } ;
struct fs_info_t {int drv; int FAT_cache_lru_list; } ;
struct buf_cache_t {int drv; TYPE_1__* buf_bh; scalar_t__ flag; int sec; } ;
typedef int sector_t ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;
struct TYPE_3__ {int * b_data; } ;


 TYPE_2__* EXFAT_SB (struct super_block*) ;
 struct buf_cache_t* FAT_cache_find (struct super_block*,int ) ;
 struct buf_cache_t* FAT_cache_get (struct super_block*,int ) ;
 int FAT_cache_insert_hash (struct super_block*,struct buf_cache_t*) ;
 int FAT_cache_remove_hash (struct buf_cache_t*) ;
 scalar_t__ FFS_SUCCESS ;
 int move_to_lru (struct buf_cache_t*,int *) ;
 int move_to_mru (struct buf_cache_t*,int *) ;
 scalar_t__ sector_read (struct super_block*,int ,TYPE_1__**,int) ;

u8 *FAT_getblk(struct super_block *sb, sector_t sec)
{
 struct buf_cache_t *bp;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 bp = FAT_cache_find(sb, sec);
 if (bp) {
  move_to_mru(bp, &p_fs->FAT_cache_lru_list);
  return bp->buf_bh->b_data;
 }

 bp = FAT_cache_get(sb, sec);

 FAT_cache_remove_hash(bp);

 bp->drv = p_fs->drv;
 bp->sec = sec;
 bp->flag = 0;

 FAT_cache_insert_hash(sb, bp);

 if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
  FAT_cache_remove_hash(bp);
  bp->drv = -1;
  bp->sec = ~0;
  bp->flag = 0;
  bp->buf_bh = ((void*)0);

  move_to_lru(bp, &p_fs->FAT_cache_lru_list);
  return ((void*)0);
 }

 return bp->buf_bh->b_data;
}
