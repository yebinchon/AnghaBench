
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_info_t {int buf_cache_lru_list; } ;
struct buf_cache_t {int drv; int * buf_bh; scalar_t__ flag; int sec; } ;
typedef int sector_t ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int __brelse (int *) ;
 int b_sem ;
 struct buf_cache_t* buf_cache_find (struct super_block*,int ) ;
 int down (int *) ;
 scalar_t__ likely (struct buf_cache_t*) ;
 int move_to_lru (struct buf_cache_t*,int *) ;
 int up (int *) ;

void buf_release(struct super_block *sb, sector_t sec)
{
 struct buf_cache_t *bp;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 down(&b_sem);

 bp = buf_cache_find(sb, sec);
 if (likely(bp)) {
  bp->drv = -1;
  bp->sec = ~0;
  bp->flag = 0;

  if (bp->buf_bh) {
   __brelse(bp->buf_bh);
   bp->buf_bh = ((void*)0);
  }

  move_to_lru(bp, &p_fs->buf_cache_lru_list);
 }

 up(&b_sem);
}
