
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {int flags; TYPE_1__ fid; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_AUTOCELL ;
 int ENOENT ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int _enter (char*,struct dentry*,struct dentry*,int ,int ) ;
 int _leave (char*,...) ;
 struct inode* afs_iget_pseudo_dir (int ,int) ;
 int afs_probe_cell_name (struct dentry*) ;
 int test_bit (int ,int *) ;

struct inode *afs_try_auto_mntpt(struct dentry *dentry, struct inode *dir)
{
 struct afs_vnode *vnode = AFS_FS_I(dir);
 struct inode *inode;
 int ret = -ENOENT;

 _enter("%p{%pd}, {%llx:%llu}",
        dentry, dentry, vnode->fid.vid, vnode->fid.vnode);

 if (!test_bit(AFS_VNODE_AUTOCELL, &vnode->flags))
  goto out;

 ret = afs_probe_cell_name(dentry);
 if (ret < 0)
  goto out;

 inode = afs_iget_pseudo_dir(dir->i_sb, 0);
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  goto out;
 }

 _leave("= %p", inode);
 return inode;

out:
 _leave("= %d", ret);
 return ret == -ENOENT ? ((void*)0) : ERR_PTR(ret);
}
