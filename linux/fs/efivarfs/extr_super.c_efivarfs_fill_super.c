
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_d_op; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct inode {int * i_op; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;


 int EFIVARFS_MAGIC ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_LFS_FILESIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int S_IFDIR ;
 int __efivar_entry_iter (int ,int *,int *,int *) ;
 struct dentry* d_make_root (struct inode*) ;
 int efivar_init (int ,void*,int,int *) ;
 int efivarfs_callback ;
 int efivarfs_d_ops ;
 int efivarfs_destroy ;
 int efivarfs_dir_inode_operations ;
 struct inode* efivarfs_get_inode (struct super_block*,int *,int,int ,int) ;
 int efivarfs_list ;
 int efivarfs_ops ;

__attribute__((used)) static int efivarfs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct inode *inode = ((void*)0);
 struct dentry *root;
 int err;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = EFIVARFS_MAGIC;
 sb->s_op = &efivarfs_ops;
 sb->s_d_op = &efivarfs_d_ops;
 sb->s_time_gran = 1;

 inode = efivarfs_get_inode(sb, ((void*)0), S_IFDIR | 0755, 0, 1);
 if (!inode)
  return -ENOMEM;
 inode->i_op = &efivarfs_dir_inode_operations;

 root = d_make_root(inode);
 sb->s_root = root;
 if (!root)
  return -ENOMEM;

 INIT_LIST_HEAD(&efivarfs_list);

 err = efivar_init(efivarfs_callback, (void *)sb, 1, &efivarfs_list);
 if (err)
  __efivar_entry_iter(efivarfs_destroy, &efivarfs_list, ((void*)0), ((void*)0));

 return err;
}
