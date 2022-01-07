
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int * i_fop; int * i_op; } ;
struct TYPE_2__ {int name; } ;
struct dentry {int d_fsdata; TYPE_1__ d_name; struct dentry* d_parent; } ;
struct configfs_fragment {int dummy; } ;
struct config_item {struct dentry* ci_dentry; } ;


 int BUG_ON (int) ;
 int CONFIGFS_DIR ;
 int CONFIGFS_USET_CREATING ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 struct inode* configfs_create (struct dentry*,int) ;
 int configfs_dir_inode_operations ;
 int configfs_dir_operations ;
 int configfs_dirent_exists (int ,int ) ;
 int configfs_make_dirent (int ,struct dentry*,struct config_item*,int,int,struct configfs_fragment*) ;
 int configfs_remove_dirent (struct dentry*) ;
 int configfs_set_dir_dirent_depth (int ,int ) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int inc_nlink (struct inode*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int configfs_create_dir(struct config_item *item, struct dentry *dentry,
    struct configfs_fragment *frag)
{
 int error;
 umode_t mode = S_IFDIR| S_IRWXU | S_IRUGO | S_IXUGO;
 struct dentry *p = dentry->d_parent;
 struct inode *inode;

 BUG_ON(!item);

 error = configfs_dirent_exists(p->d_fsdata, dentry->d_name.name);
 if (unlikely(error))
  return error;

 error = configfs_make_dirent(p->d_fsdata, dentry, item, mode,
         CONFIGFS_DIR | CONFIGFS_USET_CREATING,
         frag);
 if (unlikely(error))
  return error;

 configfs_set_dir_dirent_depth(p->d_fsdata, dentry->d_fsdata);
 inode = configfs_create(dentry, mode);
 if (IS_ERR(inode))
  goto out_remove;

 inode->i_op = &configfs_dir_inode_operations;
 inode->i_fop = &configfs_dir_operations;

 inc_nlink(inode);
 d_instantiate(dentry, inode);

 dget(dentry);
 inc_nlink(d_inode(p));
 item->ci_dentry = dentry;
 return 0;

out_remove:
 configfs_remove_dirent(dentry);
 return PTR_ERR(inode);
}
