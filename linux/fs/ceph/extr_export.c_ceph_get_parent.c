
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; int i_sb; } ;
struct dentry {int d_sb; } ;


 scalar_t__ CEPH_NOSNAP ;
 scalar_t__ CEPH_SNAPDIR ;
 int EINVAL ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ PTR_ERR_OR_ZERO (struct dentry*) ;
 struct dentry* __get_parent (int ,struct dentry*,int ) ;
 struct inode* __lookup_inode (int ,int ) ;
 struct inode* ceph_get_snapdir (struct inode*) ;
 int ceph_ino (struct inode*) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int ceph_vinop (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct dentry* d_obtain_root (struct inode*) ;
 int dout (char*,struct dentry*,int ,long) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *ceph_get_parent(struct dentry *child)
{
 struct inode *inode = d_inode(child);
 struct dentry *dn;

 if (ceph_snap(inode) != CEPH_NOSNAP) {
  struct inode* dir;
  bool unlinked = 0;

  if (!d_is_dir(child)) {
   dn = ERR_PTR(-EINVAL);
   goto out;
  }
  dir = __lookup_inode(inode->i_sb, ceph_ino(inode));
  if (IS_ERR(dir)) {
   dn = ERR_CAST(dir);
   goto out;
  }


  if (ceph_snap(inode) != CEPH_SNAPDIR) {
   struct inode *snapdir = ceph_get_snapdir(dir);
   if (dir->i_nlink == 0)
    unlinked = 1;
   iput(dir);
   if (IS_ERR(snapdir)) {
    dn = ERR_CAST(snapdir);
    goto out;
   }
   dir = snapdir;
  }



  if (unlinked)
   dn = d_obtain_root(dir);
  else
   dn = d_obtain_alias(dir);
 } else {
  dn = __get_parent(child->d_sb, child, 0);
 }
out:
 dout("get_parent %p ino %llx.%llx err=%ld\n",
      child, ceph_vinop(inode), (long)PTR_ERR_OR_ZERO(dn));
 return dn;
}
