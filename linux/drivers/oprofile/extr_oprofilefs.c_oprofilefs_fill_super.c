
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int * i_fop; int * i_op; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int OPROFILEFS_MAGIC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int S_IFDIR ;
 int d_make_root (struct inode*) ;
 int oprofile_create_files (int ) ;
 struct inode* oprofilefs_get_inode (struct super_block*,int) ;
 int s_ops ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static int oprofilefs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct inode *root_inode;

 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = OPROFILEFS_MAGIC;
 sb->s_op = &s_ops;
 sb->s_time_gran = 1;

 root_inode = oprofilefs_get_inode(sb, S_IFDIR | 0755);
 if (!root_inode)
  return -ENOMEM;
 root_inode->i_op = &simple_dir_inode_operations;
 root_inode->i_fop = &simple_dir_operations;
 sb->s_root = d_make_root(root_inode);
 if (!sb->s_root)
  return -ENOMEM;

 oprofile_create_files(sb->s_root);


 return 0;
}
