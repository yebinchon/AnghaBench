
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_lock; int d_parent; } ;
struct ceph_inode_info {int i_shared_gen; int i_ceph_lock; } ;
struct ceph_dentry_info {int lease_shared_gen; } ;


 int CEPH_CAP_FILE_SHARED ;
 int __ceph_caps_issued_mask (struct ceph_inode_info*,int ,int) ;
 int __ceph_dentry_dir_lease_touch (struct ceph_dentry_info*) ;
 int atomic_read (int *) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct inode* d_inode (int ) ;
 int dout (char*,struct inode*,unsigned int,struct dentry*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dir_lease_is_valid(struct inode *dir, struct dentry *dentry)
{
 struct ceph_inode_info *ci = ceph_inode(dir);
 int valid;
 int shared_gen;

 spin_lock(&ci->i_ceph_lock);
 valid = __ceph_caps_issued_mask(ci, CEPH_CAP_FILE_SHARED, 1);
 shared_gen = atomic_read(&ci->i_shared_gen);
 spin_unlock(&ci->i_ceph_lock);
 if (valid) {
  struct ceph_dentry_info *di;
  spin_lock(&dentry->d_lock);
  di = ceph_dentry(dentry);
  if (dir == d_inode(dentry->d_parent) &&
      di && di->lease_shared_gen == shared_gen)
   __ceph_dentry_dir_lease_touch(di);
  else
   valid = 0;
  spin_unlock(&dentry->d_lock);
 }
 dout("dir_lease_is_valid dir %p v%u dentry %p = %d\n",
      dir, (unsigned)atomic_read(&ci->i_shared_gen), dentry, valid);
 return valid;
}
