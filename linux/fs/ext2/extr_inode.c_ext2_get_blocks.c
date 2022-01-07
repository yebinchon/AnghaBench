
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* u32 ;
struct inode {TYPE_4__* i_sb; int i_mode; } ;
struct ext2_inode_info {int truncate_mutex; int i_block_alloc_info; } ;
typedef int sector_t ;
typedef scalar_t__ ext2_fsblk_t ;
struct TYPE_12__ {int s_bdev; } ;
struct TYPE_11__ {int key; int bh; int * p; } ;
typedef TYPE_1__ Indirect ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EIO ;
 struct ext2_inode_info* EXT2_I (struct inode*) ;
 int GFP_NOFS ;
 scalar_t__ IS_DAX (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int brelse (int ) ;
 int clean_bdev_aliases (int ,void*,int) ;
 int ext2_alloc_branch (struct inode*,int,int*,scalar_t__,int*,TYPE_1__*) ;
 int ext2_blks_to_allocate (TYPE_1__*,int,unsigned long,int) ;
 int ext2_block_to_path (struct inode*,int ,int*,int*) ;
 scalar_t__ ext2_find_goal (struct inode*,int ,TYPE_1__*) ;
 TYPE_1__* ext2_get_branch (struct inode*,int,int*,TYPE_1__*,int*) ;
 int ext2_init_block_alloc_info (struct inode*) ;
 int ext2_splice_branch (struct inode*,int ,TYPE_1__*,int,int) ;
 void* le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sb_issue_zeroout (TYPE_4__*,void*,int,int ) ;
 int verify_chain (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int ext2_get_blocks(struct inode *inode,
      sector_t iblock, unsigned long maxblocks,
      u32 *bno, bool *new, bool *boundary,
      int create)
{
 int err;
 int offsets[4];
 Indirect chain[4];
 Indirect *partial;
 ext2_fsblk_t goal;
 int indirect_blks;
 int blocks_to_boundary = 0;
 int depth;
 struct ext2_inode_info *ei = EXT2_I(inode);
 int count = 0;
 ext2_fsblk_t first_block = 0;

 BUG_ON(maxblocks == 0);

 depth = ext2_block_to_path(inode,iblock,offsets,&blocks_to_boundary);

 if (depth == 0)
  return -EIO;

 partial = ext2_get_branch(inode, depth, offsets, chain, &err);

 if (!partial) {
  first_block = le32_to_cpu(chain[depth - 1].key);
  count++;

  while (count < maxblocks && count <= blocks_to_boundary) {
   ext2_fsblk_t blk;

   if (!verify_chain(chain, chain + depth - 1)) {






    err = -EAGAIN;
    count = 0;
    partial = chain + depth - 1;
    break;
   }
   blk = le32_to_cpu(*(chain[depth-1].p + count));
   if (blk == first_block + count)
    count++;
   else
    break;
  }
  if (err != -EAGAIN)
   goto got_it;
 }


 if (!create || err == -EIO)
  goto cleanup;

 mutex_lock(&ei->truncate_mutex);
 if (err == -EAGAIN || !verify_chain(chain, partial)) {
  while (partial > chain) {
   brelse(partial->bh);
   partial--;
  }
  partial = ext2_get_branch(inode, depth, offsets, chain, &err);
  if (!partial) {
   count++;
   mutex_unlock(&ei->truncate_mutex);
   if (err)
    goto cleanup;
   goto got_it;
  }
 }





 if (S_ISREG(inode->i_mode) && (!ei->i_block_alloc_info))
  ext2_init_block_alloc_info(inode);

 goal = ext2_find_goal(inode, iblock, partial);


 indirect_blks = (chain + depth) - partial - 1;




 count = ext2_blks_to_allocate(partial, indirect_blks,
     maxblocks, blocks_to_boundary);



 err = ext2_alloc_branch(inode, indirect_blks, &count, goal,
    offsets + (partial - chain), partial);

 if (err) {
  mutex_unlock(&ei->truncate_mutex);
  goto cleanup;
 }

 if (IS_DAX(inode)) {




  clean_bdev_aliases(inode->i_sb->s_bdev,
       le32_to_cpu(chain[depth-1].key),
       count);





  err = sb_issue_zeroout(inode->i_sb,
    le32_to_cpu(chain[depth-1].key), count,
    GFP_NOFS);
  if (err) {
   mutex_unlock(&ei->truncate_mutex);
   goto cleanup;
  }
 }
 *new = 1;

 ext2_splice_branch(inode, iblock, partial, indirect_blks, count);
 mutex_unlock(&ei->truncate_mutex);
got_it:
 if (count > blocks_to_boundary)
  *boundary = 1;
 err = count;

 partial = chain + depth - 1;
cleanup:
 while (partial > chain) {
  brelse(partial->bh);
  partial--;
 }
 if (err > 0)
  *bno = le32_to_cpu(chain[depth-1].key);
 return err;
}
