
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {unsigned int i_blkbits; int i_sb; } ;
struct buffer_head {unsigned int b_size; } ;
typedef int sector_t ;


 int ext2_get_blocks (struct inode*,int ,unsigned int,int *,int*,int*,int) ;
 int map_bh (struct buffer_head*,int ,int ) ;
 int set_buffer_boundary (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;

int ext2_get_block(struct inode *inode, sector_t iblock,
  struct buffer_head *bh_result, int create)
{
 unsigned max_blocks = bh_result->b_size >> inode->i_blkbits;
 bool new = 0, boundary = 0;
 u32 bno;
 int ret;

 ret = ext2_get_blocks(inode, iblock, max_blocks, &bno, &new, &boundary,
   create);
 if (ret <= 0)
  return ret;

 map_bh(bh_result, inode->i_sb, bno);
 bh_result->b_size = (ret << inode->i_blkbits);
 if (new)
  set_buffer_new(bh_result);
 if (boundary)
  set_buffer_boundary(bh_result);
 return 0;

}
