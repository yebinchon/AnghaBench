
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; struct ffs_data* s_fs_info; } ;
struct inode {int dummy; } ;
struct fs_context {struct ffs_sb_fill_data* fs_private; } ;
struct TYPE_2__ {int mode; } ;
struct ffs_sb_fill_data {TYPE_1__ perms; int root_mode; struct ffs_data* ffs_data; } ;
struct ffs_data {struct super_block* sb; } ;


 int ENOMEM ;
 int ENTER () ;
 int FUNCTIONFS_MAGIC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int d_make_root (struct inode*) ;
 int ffs_ep0_operations ;
 int ffs_sb_create_file (struct super_block*,char*,struct ffs_data*,int *) ;
 struct inode* ffs_sb_make_inode (struct super_block*,int *,int *,int *,TYPE_1__*) ;
 int ffs_sb_operations ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ffs_sb_fill(struct super_block *sb, struct fs_context *fc)
{
 struct ffs_sb_fill_data *data = fc->fs_private;
 struct inode *inode;
 struct ffs_data *ffs = data->ffs_data;

 ENTER();

 ffs->sb = sb;
 data->ffs_data = ((void*)0);
 sb->s_fs_info = ffs;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = FUNCTIONFS_MAGIC;
 sb->s_op = &ffs_sb_operations;
 sb->s_time_gran = 1;


 data->perms.mode = data->root_mode;
 inode = ffs_sb_make_inode(sb, ((void*)0),
      &simple_dir_operations,
      &simple_dir_inode_operations,
      &data->perms);
 sb->s_root = d_make_root(inode);
 if (unlikely(!sb->s_root))
  return -ENOMEM;


 if (unlikely(!ffs_sb_create_file(sb, "ep0", ffs,
      &ffs_ep0_operations)))
  return -ENOMEM;

 return 0;
}
