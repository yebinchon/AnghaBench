
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buf_cache_t {scalar_t__ drv; int flag; struct buf_cache_t* next; int buf_bh; } ;
struct fs_info_t {scalar_t__ drv; struct buf_cache_t buf_cache_lru_list; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 int DIRTYBIT ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int b_sem ;
 int down (int *) ;
 int sync_dirty_buffer (int ) ;
 int up (int *) ;

void buf_sync(struct super_block *sb)
{
 struct buf_cache_t *bp;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 down(&b_sem);

 bp = p_fs->buf_cache_lru_list.next;
 while (bp != &p_fs->buf_cache_lru_list) {
  if ((bp->drv == p_fs->drv) && (bp->flag & DIRTYBIT)) {
   sync_dirty_buffer(bp->buf_bh);
   bp->flag &= ~(DIRTYBIT);
  }
  bp = bp->next;
 }

 up(&b_sem);
}
