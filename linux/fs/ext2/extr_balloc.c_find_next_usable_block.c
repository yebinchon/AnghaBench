
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {scalar_t__ b_data; } ;
typedef int ext2_grpblk_t ;


 int bitmap_search_next_usable_block (int,struct buffer_head*,int) ;
 int ext2_debug (char*) ;
 int ext2_find_next_zero_bit (scalar_t__,int,int) ;
 char* memscan (char*,int ,int) ;

__attribute__((used)) static ext2_grpblk_t
find_next_usable_block(int start, struct buffer_head *bh, int maxblocks)
{
 ext2_grpblk_t here, next;
 char *p, *r;

 if (start > 0) {
  ext2_grpblk_t end_goal = (start + 63) & ~63;
  if (end_goal > maxblocks)
   end_goal = maxblocks;
  here = ext2_find_next_zero_bit(bh->b_data, end_goal, start);
  if (here < end_goal)
   return here;
  ext2_debug("Bit not found near goal\n");
 }

 here = start;
 if (here < 0)
  here = 0;

 p = ((char *)bh->b_data) + (here >> 3);
 r = memscan(p, 0, ((maxblocks + 7) >> 3) - (here >> 3));
 next = (r - ((char *)bh->b_data)) << 3;

 if (next < maxblocks && next >= here)
  return next;

 here = bitmap_search_next_usable_block(here, bh, maxblocks);
 return here;
}
