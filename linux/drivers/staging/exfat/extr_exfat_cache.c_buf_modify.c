
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buf_cache_t {int buf_bh; } ;
typedef scalar_t__ sector_t ;


 int WARN (int,char*,unsigned long long) ;
 int b_sem ;
 struct buf_cache_t* buf_cache_find (struct super_block*,scalar_t__) ;
 int down (int *) ;
 scalar_t__ likely (struct buf_cache_t*) ;
 int sector_write (struct super_block*,scalar_t__,int ,int ) ;
 int up (int *) ;

void buf_modify(struct super_block *sb, sector_t sec)
{
 struct buf_cache_t *bp;

 down(&b_sem);

 bp = buf_cache_find(sb, sec);
 if (likely(bp))
  sector_write(sb, sec, bp->buf_bh, 0);

 WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
      (unsigned long long)sec);

 up(&b_sem);
}
