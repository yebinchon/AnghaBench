
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct affs_ext_key {int dummy; } ;
struct TYPE_4__ {int* i_lc; int i_lc_shift; int i_extcnt; int i_lc_size; int i_lc_mask; struct affs_ext_key* i_ac; } ;
struct TYPE_3__ {int extension; } ;


 int AFFS_CACHE_SIZE ;
 TYPE_2__* AFFS_I (struct inode*) ;
 int AFFS_LC_SIZE ;
 TYPE_1__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct buffer_head* affs_bread (struct super_block*,int) ;
 int affs_brelse (struct buffer_head*) ;
 int be32_to_cpu (int ) ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int
affs_grow_extcache(struct inode *inode, u32 lc_idx)
{
 struct super_block *sb = inode->i_sb;
 struct buffer_head *bh;
 u32 lc_max;
 int i, j, key;

 if (!AFFS_I(inode)->i_lc) {
  char *ptr = (char *)get_zeroed_page(GFP_NOFS);
  if (!ptr)
   return -ENOMEM;
  AFFS_I(inode)->i_lc = (u32 *)ptr;
  AFFS_I(inode)->i_ac = (struct affs_ext_key *)(ptr + AFFS_CACHE_SIZE / 2);
 }

 lc_max = AFFS_LC_SIZE << AFFS_I(inode)->i_lc_shift;

 if (AFFS_I(inode)->i_extcnt > lc_max) {
  u32 lc_shift, lc_mask, tmp, off;


  lc_shift = AFFS_I(inode)->i_lc_shift;
  tmp = (AFFS_I(inode)->i_extcnt / AFFS_LC_SIZE) >> lc_shift;
  for (; tmp; tmp >>= 1)
   lc_shift++;
  lc_mask = (1 << lc_shift) - 1;


  lc_idx >>= (lc_shift - AFFS_I(inode)->i_lc_shift);
  AFFS_I(inode)->i_lc_size >>= (lc_shift - AFFS_I(inode)->i_lc_shift);


  off = 1 << (lc_shift - AFFS_I(inode)->i_lc_shift);
  for (i = 1, j = off; j < AFFS_LC_SIZE; i++, j += off)
   AFFS_I(inode)->i_ac[i] = AFFS_I(inode)->i_ac[j];

  AFFS_I(inode)->i_lc_shift = lc_shift;
  AFFS_I(inode)->i_lc_mask = lc_mask;
 }


 i = AFFS_I(inode)->i_lc_size;
 AFFS_I(inode)->i_lc_size = lc_idx + 1;
 for (; i <= lc_idx; i++) {
  if (!i) {
   AFFS_I(inode)->i_lc[0] = inode->i_ino;
   continue;
  }
  key = AFFS_I(inode)->i_lc[i - 1];
  j = AFFS_I(inode)->i_lc_mask + 1;

  for (; j > 0; j--) {
   bh = affs_bread(sb, key);
   if (!bh)
    goto err;
   key = be32_to_cpu(AFFS_TAIL(sb, bh)->extension);
   affs_brelse(bh);
  }

  AFFS_I(inode)->i_lc[i] = key;
 }

 return 0;

err:

 return -EIO;
}
