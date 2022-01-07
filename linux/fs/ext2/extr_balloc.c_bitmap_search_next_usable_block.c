
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_data; } ;
typedef scalar_t__ ext2_grpblk_t ;


 scalar_t__ ext2_find_next_zero_bit (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static ext2_grpblk_t
bitmap_search_next_usable_block(ext2_grpblk_t start, struct buffer_head *bh,
     ext2_grpblk_t maxblocks)
{
 ext2_grpblk_t next;

 next = ext2_find_next_zero_bit(bh->b_data, maxblocks, start);
 if (next >= maxblocks)
  return -1;
 return next;
}
