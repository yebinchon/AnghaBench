
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ __le32 ;


 int EXT2_ADDR_PER_BLOCK (int ) ;
 int bforget (struct buffer_head*) ;
 int ext2_error (int ,char*,char*,int ,unsigned long) ;
 int ext2_free_blocks (struct inode*,unsigned long,int) ;
 int ext2_free_data (struct inode*,scalar_t__*,scalar_t__*) ;
 unsigned long le32_to_cpu (scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 struct buffer_head* sb_bread (int ,unsigned long) ;

__attribute__((used)) static void ext2_free_branches(struct inode *inode, __le32 *p, __le32 *q, int depth)
{
 struct buffer_head * bh;
 unsigned long nr;

 if (depth--) {
  int addr_per_block = EXT2_ADDR_PER_BLOCK(inode->i_sb);
  for ( ; p < q ; p++) {
   nr = le32_to_cpu(*p);
   if (!nr)
    continue;
   *p = 0;
   bh = sb_bread(inode->i_sb, nr);




   if (!bh) {
    ext2_error(inode->i_sb, "ext2_free_branches",
     "Read failure, inode=%ld, block=%ld",
     inode->i_ino, nr);
    continue;
   }
   ext2_free_branches(inode,
        (__le32*)bh->b_data,
        (__le32*)bh->b_data + addr_per_block,
        depth);
   bforget(bh);
   ext2_free_blocks(inode, nr, 1);
   mark_inode_dirty(inode);
  }
 } else
  ext2_free_data(inode, p, q);
}
