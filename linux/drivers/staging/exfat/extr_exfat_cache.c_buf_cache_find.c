
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_info_t {int sectors_per_clu_bits; scalar_t__ drv; struct buf_cache_t* buf_cache_hash_list; } ;
struct buf_cache_t {scalar_t__ drv; int sec; int buf_bh; struct buf_cache_t* hash_next; } ;
typedef int sector_t ;
typedef size_t s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 int BUF_CACHE_HASH_SIZE ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int touch_buffer (int ) ;

__attribute__((used)) static struct buf_cache_t *buf_cache_find(struct super_block *sb, sector_t sec)
{
 s32 off;
 struct buf_cache_t *bp, *hp;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 off = (sec + (sec >> p_fs->sectors_per_clu_bits)) &
  (BUF_CACHE_HASH_SIZE - 1);

 hp = &p_fs->buf_cache_hash_list[off];
 for (bp = hp->hash_next; bp != hp; bp = bp->hash_next) {
  if ((bp->drv == p_fs->drv) && (bp->sec == sec)) {
   touch_buffer(bp->buf_bh);
   return bp;
  }
 }
 return ((void*)0);
}
