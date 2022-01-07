
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct super_block {int s_blocksize; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct affs_sb_info {scalar_t__ s_partition_size; scalar_t__ s_reserved; scalar_t__ s_bmap_bits; int s_bmap_count; scalar_t__ s_last_bmap; int s_bmlock; struct buffer_head* s_bmap_bh; struct affs_bm_info* s_bitmap; } ;
struct affs_bm_info {int bm_key; scalar_t__ bm_free; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int i_lastalloc; scalar_t__ i_pa_cnt; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 struct buffer_head* affs_bread (struct super_block*,int ) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_error (struct super_block*,char*,char*,int ) ;
 int affs_mark_sb_dirty (struct super_block*) ;
 int affs_warning (struct super_block*,char*,char*,scalar_t__) ;
 scalar_t__ be32_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be32 (scalar_t__) ;
 int ffs (scalar_t__) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;

u32
affs_alloc_block(struct inode *inode, u32 goal)
{
 struct super_block *sb;
 struct affs_sb_info *sbi;
 struct affs_bm_info *bm;
 struct buffer_head *bh;
 __be32 *data, *enddata;
 u32 blk, bmap, bit, mask, mask2, tmp;
 int i;

 sb = inode->i_sb;
 sbi = AFFS_SB(sb);

 pr_debug("balloc(inode=%lu,goal=%u): ", inode->i_ino, goal);

 if (AFFS_I(inode)->i_pa_cnt) {
  pr_debug("%d\n", AFFS_I(inode)->i_lastalloc+1);
  AFFS_I(inode)->i_pa_cnt--;
  return ++AFFS_I(inode)->i_lastalloc;
 }

 if (!goal || goal > sbi->s_partition_size) {
  if (goal)
   affs_warning(sb, "affs_balloc", "invalid goal %d", goal);


  goal = sbi->s_reserved;
 }

 blk = goal - sbi->s_reserved;
 bmap = blk / sbi->s_bmap_bits;
 bm = &sbi->s_bitmap[bmap];

 mutex_lock(&sbi->s_bmlock);

 if (bm->bm_free)
  goto find_bmap_bit;

find_bmap:

 i = sbi->s_bmap_count;
 do {
  if (--i < 0)
   goto err_full;
  bmap++;
  bm++;
  if (bmap < sbi->s_bmap_count)
   continue;

  bmap = 0;
  bm = sbi->s_bitmap;
 } while (!bm->bm_free);
 blk = bmap * sbi->s_bmap_bits;

find_bmap_bit:

 bh = sbi->s_bmap_bh;
 if (sbi->s_last_bmap != bmap) {
  affs_brelse(bh);
  bh = affs_bread(sb, bm->bm_key);
  if (!bh)
   goto err_bh_read;
  sbi->s_bmap_bh = bh;
  sbi->s_last_bmap = bmap;
 }


 bit = blk % sbi->s_bmap_bits;
 data = (__be32 *)bh->b_data + bit / 32 + 1;
 enddata = (__be32 *)((u8 *)bh->b_data + sb->s_blocksize);
 mask = ~0UL << (bit & 31);
 blk &= ~31UL;

 tmp = be32_to_cpu(*data);
 if (tmp & mask)
  goto find_bit;


 do {
  blk += 32;
  if (++data >= enddata)



   goto find_bmap;
 } while (!*data);
 tmp = be32_to_cpu(*data);
 mask = ~0;

find_bit:

 bit = ffs(tmp & mask) - 1;
 blk += bit + sbi->s_reserved;
 mask2 = mask = 1 << (bit & 31);
 AFFS_I(inode)->i_lastalloc = blk;


 while ((mask2 <<= 1)) {
  if (!(tmp & mask2))
   break;
  AFFS_I(inode)->i_pa_cnt++;
  mask |= mask2;
 }
 bm->bm_free -= AFFS_I(inode)->i_pa_cnt + 1;

 *data = cpu_to_be32(tmp & ~mask);


 tmp = be32_to_cpu(*(__be32 *)bh->b_data);
 *(__be32 *)bh->b_data = cpu_to_be32(tmp + mask);

 mark_buffer_dirty(bh);
 affs_mark_sb_dirty(sb);

 mutex_unlock(&sbi->s_bmlock);

 pr_debug("%d\n", blk);
 return blk;

err_bh_read:
 affs_error(sb,"affs_read_block","Cannot read bitmap block %u", bm->bm_key);
 sbi->s_bmap_bh = ((void*)0);
 sbi->s_last_bmap = ~0;
err_full:
 mutex_unlock(&sbi->s_bmlock);
 pr_debug("failed\n");
 return 0;
}
