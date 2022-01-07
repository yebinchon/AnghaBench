
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct coda_inode_info {int c_flags; int c_lock; } ;


 int C_FLUSH ;
 int C_PURGE ;
 int C_VATTR ;
 int ECHILD ;
 struct coda_inode_info* ITOC (struct inode*) ;
 unsigned int LOOKUP_RCU ;
 int coda_flag_inode_children (struct inode*,int) ;
 int d_count (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 scalar_t__ is_root_inode (struct inode*) ;
 int shrink_dcache_parent (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int coda_dentry_revalidate(struct dentry *de, unsigned int flags)
{
 struct inode *inode;
 struct coda_inode_info *cii;

 if (flags & LOOKUP_RCU)
  return -ECHILD;

 inode = d_inode(de);
 if (!inode || is_root_inode(inode))
  goto out;
 if (is_bad_inode(inode))
  goto bad;

 cii = ITOC(d_inode(de));
 if (!(cii->c_flags & (C_PURGE | C_FLUSH)))
  goto out;

 shrink_dcache_parent(de);


 if (cii->c_flags & C_FLUSH)
  coda_flag_inode_children(inode, C_FLUSH);

 if (d_count(de) > 1)

  goto out;


 spin_lock(&cii->c_lock);
 cii->c_flags &= ~(C_VATTR | C_PURGE | C_FLUSH);
 spin_unlock(&cii->c_lock);
bad:
 return 0;
out:
 return 1;
}
