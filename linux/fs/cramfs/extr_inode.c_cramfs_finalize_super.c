
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; int * s_op; scalar_t__ s_time_max; scalar_t__ s_time_min; int s_flags; } ;
struct inode {int dummy; } ;
struct cramfs_inode {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int SB_RDONLY ;
 int cramfs_ops ;
 int d_make_root (struct inode*) ;
 struct inode* get_cramfs_inode (struct super_block*,struct cramfs_inode*,int ) ;

__attribute__((used)) static int cramfs_finalize_super(struct super_block *sb,
     struct cramfs_inode *cramfs_root)
{
 struct inode *root;


 sb->s_flags |= SB_RDONLY;
 sb->s_time_min = 0;
 sb->s_time_max = 0;
 sb->s_op = &cramfs_ops;
 root = get_cramfs_inode(sb, cramfs_root, 0);
 if (IS_ERR(root))
  return PTR_ERR(root);
 sb->s_root = d_make_root(root);
 if (!sb->s_root)
  return -ENOMEM;
 return 0;
}
