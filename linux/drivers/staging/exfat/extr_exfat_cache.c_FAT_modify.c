
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buf_cache_t {int buf_bh; } ;
typedef int sector_t ;


 struct buf_cache_t* FAT_cache_find (struct super_block*,int ) ;
 int sector_write (struct super_block*,int ,int ,int ) ;

void FAT_modify(struct super_block *sb, sector_t sec)
{
 struct buf_cache_t *bp;

 bp = FAT_cache_find(sb, sec);
 if (bp)
  sector_write(sb, sec, bp->buf_bh, 0);
}
