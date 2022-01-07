
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __le32 ;
struct TYPE_9__ {int i_meta_lock; int * i_data; } ;
struct TYPE_8__ {int key; } ;
typedef TYPE_1__ Indirect ;


 int EAGAIN ;
 int EIO ;
 TYPE_7__* EXT2_I (struct inode*) ;
 int add_chain (TYPE_1__*,struct buffer_head*,int *) ;
 int brelse (struct buffer_head*) ;
 int le32_to_cpu (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;
 int verify_chain (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static Indirect *ext2_get_branch(struct inode *inode,
     int depth,
     int *offsets,
     Indirect chain[4],
     int *err)
{
 struct super_block *sb = inode->i_sb;
 Indirect *p = chain;
 struct buffer_head *bh;

 *err = 0;

 add_chain (chain, ((void*)0), EXT2_I(inode)->i_data + *offsets);
 if (!p->key)
  goto no_block;
 while (--depth) {
  bh = sb_bread(sb, le32_to_cpu(p->key));
  if (!bh)
   goto failure;
  read_lock(&EXT2_I(inode)->i_meta_lock);
  if (!verify_chain(chain, p))
   goto changed;
  add_chain(++p, bh, (__le32*)bh->b_data + *++offsets);
  read_unlock(&EXT2_I(inode)->i_meta_lock);
  if (!p->key)
   goto no_block;
 }
 return ((void*)0);

changed:
 read_unlock(&EXT2_I(inode)->i_meta_lock);
 brelse(bh);
 *err = -EAGAIN;
 goto no_block;
failure:
 *err = -EIO;
no_block:
 return p;
}
