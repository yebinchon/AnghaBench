
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; struct file_operations const* i_fop; int * i_op; void* i_private; } ;
struct file_operations {int dummy; } ;
struct dentry {int d_parent; void* d_fsdata; int d_sb; } ;


 int BUG_ON (int) ;
 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFMT ;
 int S_IFREG ;
 int S_ISREG (int) ;
 int d_inode (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int debugfs_file_inode_operations ;
 struct inode* debugfs_get_inode (int ) ;
 struct dentry* end_creating (struct dentry*) ;
 struct dentry* failed_creating (struct dentry*) ;
 int fsnotify_create (int ,struct dentry*) ;
 int pr_err (char*,char const*) ;
 struct dentry* start_creating (char const*,struct dentry*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dentry *__debugfs_create_file(const char *name, umode_t mode,
    struct dentry *parent, void *data,
    const struct file_operations *proxy_fops,
    const struct file_operations *real_fops)
{
 struct dentry *dentry;
 struct inode *inode;

 if (!(mode & S_IFMT))
  mode |= S_IFREG;
 BUG_ON(!S_ISREG(mode));
 dentry = start_creating(name, parent);

 if (IS_ERR(dentry))
  return dentry;

 inode = debugfs_get_inode(dentry->d_sb);
 if (unlikely(!inode)) {
  pr_err("out of free dentries, can not create file '%s'\n",
         name);
  return failed_creating(dentry);
 }

 inode->i_mode = mode;
 inode->i_private = data;

 inode->i_op = &debugfs_file_inode_operations;
 inode->i_fop = proxy_fops;
 dentry->d_fsdata = (void *)((unsigned long)real_fops |
    DEBUGFS_FSDATA_IS_REAL_FOPS_BIT);

 d_instantiate(dentry, inode);
 fsnotify_create(d_inode(dentry->d_parent), dentry);
 return end_creating(dentry);
}
