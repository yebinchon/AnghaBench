
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buf_cache_t {int flag; } ;
typedef scalar_t__ sector_t ;


 int LOCKBIT ;
 int WARN (int,char*,unsigned long long) ;
 int b_sem ;
 struct buf_cache_t* buf_cache_find (struct super_block*,scalar_t__) ;
 int down (int *) ;
 scalar_t__ likely (struct buf_cache_t*) ;
 int up (int *) ;

void buf_lock(struct super_block *sb, sector_t sec)
{
 struct buf_cache_t *bp;

 down(&b_sem);

 bp = buf_cache_find(sb, sec);
 if (likely(bp))
  bp->flag |= LOCKBIT;

 WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
      (unsigned long long)sec);

 up(&b_sem);
}
