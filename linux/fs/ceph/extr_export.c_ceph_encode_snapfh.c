
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct inode {int i_mode; } ;
struct dentry {int d_parent; } ;
struct ceph_nfs_snapfh {scalar_t__ snapid; void* ino; scalar_t__ hash; void* parent_ino; } ;


 scalar_t__ CEPH_SNAPDIR ;
 int EINVAL ;
 int FILEID_BTRFS_WITH_PARENT ;
 int FILEID_INVALID ;
 int S_ISDIR (int ) ;
 scalar_t__ ceph_dentry_hash (struct inode*,struct dentry*) ;
 void* ceph_ino (struct inode*) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int ceph_vinop (struct inode*) ;
 struct dentry* d_find_alias (struct inode*) ;
 struct inode* d_inode_rcu (int ) ;
 int dout (char*,int ,int) ;
 int dput (struct dentry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ceph_encode_snapfh(struct inode *inode, u32 *rawfh, int *max_len,
         struct inode *parent_inode)
{
 static const int snap_handle_length =
  sizeof(struct ceph_nfs_snapfh) >> 2;
 struct ceph_nfs_snapfh *sfh = (void *)rawfh;
 u64 snapid = ceph_snap(inode);
 int ret;
 bool no_parent = 1;

 if (*max_len < snap_handle_length) {
  *max_len = snap_handle_length;
  ret = FILEID_INVALID;
  goto out;
 }

 ret = -EINVAL;
 if (snapid != CEPH_SNAPDIR) {
  struct inode *dir;
  struct dentry *dentry = d_find_alias(inode);
  if (!dentry)
   goto out;

  rcu_read_lock();
  dir = d_inode_rcu(dentry->d_parent);
  if (ceph_snap(dir) != CEPH_SNAPDIR) {
   sfh->parent_ino = ceph_ino(dir);
   sfh->hash = ceph_dentry_hash(dir, dentry);
   no_parent = 0;
  }
  rcu_read_unlock();
  dput(dentry);
 }

 if (no_parent) {
  if (!S_ISDIR(inode->i_mode))
   goto out;
  sfh->parent_ino = sfh->ino;
  sfh->hash = 0;
 }
 sfh->ino = ceph_ino(inode);
 sfh->snapid = snapid;

 *max_len = snap_handle_length;
 ret = FILEID_BTRFS_WITH_PARENT;
out:
 dout("encode_snapfh %llx.%llx ret=%d\n", ceph_vinop(inode), ret);
 return ret;
}
