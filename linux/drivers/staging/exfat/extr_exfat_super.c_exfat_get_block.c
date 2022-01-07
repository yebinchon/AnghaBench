
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned long s_blocksize_bits; } ;
struct inode {unsigned long i_blkbits; struct super_block* i_sb; } ;
struct buffer_head {unsigned long b_size; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {unsigned long mmu_private; } ;


 TYPE_1__* EXFAT_I (struct inode*) ;
 int __lock_super (struct super_block*) ;
 int __unlock_super (struct super_block*) ;
 int exfat_bmap (struct inode*,scalar_t__,scalar_t__*,unsigned long*,int*) ;
 int map_bh (struct buffer_head*,struct super_block*,scalar_t__) ;
 unsigned long min (unsigned long,unsigned long) ;
 int set_buffer_new (struct buffer_head*) ;

__attribute__((used)) static int exfat_get_block(struct inode *inode, sector_t iblock,
      struct buffer_head *bh_result, int create)
{
 struct super_block *sb = inode->i_sb;
 unsigned long max_blocks = bh_result->b_size >> inode->i_blkbits;
 int err;
 unsigned long mapped_blocks;
 sector_t phys;

 __lock_super(sb);

 err = exfat_bmap(inode, iblock, &phys, &mapped_blocks, &create);
 if (err) {
  __unlock_super(sb);
  return err;
 }

 if (phys) {
  max_blocks = min(mapped_blocks, max_blocks);
  if (create) {
   EXFAT_I(inode)->mmu_private += max_blocks <<
       sb->s_blocksize_bits;
   set_buffer_new(bh_result);
  }
  map_bh(bh_result, sb, phys);
 }

 bh_result->b_size = max_blocks << sb->s_blocksize_bits;
 __unlock_super(sb);

 return 0;
}
