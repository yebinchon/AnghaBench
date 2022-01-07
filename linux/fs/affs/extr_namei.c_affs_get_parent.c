
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int i_ino; } ;


 TYPE_2__* AFFS_TAIL (int ,struct buffer_head*) ;
 int EIO ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct buffer_head* affs_bread (int ,int ) ;
 struct inode* affs_iget (int ,int ) ;
 int be32_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (struct inode*) ;

__attribute__((used)) static struct dentry *affs_get_parent(struct dentry *child)
{
 struct inode *parent;
 struct buffer_head *bh;

 bh = affs_bread(child->d_sb, d_inode(child)->i_ino);
 if (!bh)
  return ERR_PTR(-EIO);

 parent = affs_iget(child->d_sb,
      be32_to_cpu(AFFS_TAIL(child->d_sb, bh)->parent));
 brelse(bh);
 if (IS_ERR(parent))
  return ERR_CAST(parent);

 return d_obtain_alias(parent);
}
