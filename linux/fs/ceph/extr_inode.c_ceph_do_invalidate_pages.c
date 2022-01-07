
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {int i_mapping; } ;
struct ceph_inode_info {scalar_t__ i_rdcache_gen; scalar_t__ i_rdcache_revoking; int i_truncate_mutex; int i_ceph_lock; } ;
struct ceph_fs_client {int mount_state; } ;


 int CEPH_CAP_FILE_CACHE ;
 scalar_t__ CEPH_MOUNT_SHUTDOWN ;
 int EIO ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ __ceph_caps_revoking_other (struct ceph_inode_info*,int *,int ) ;
 int ceph_check_caps (struct ceph_inode_info*,int ,int *) ;
 int ceph_ino (struct inode*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 int dout (char*,struct inode*,scalar_t__,...) ;
 scalar_t__ invalidate_inode_pages2 (int ) ;
 int mapping_set_error (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,struct inode*) ;
 int pr_warn_ratelimited (char*,struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,int ) ;

__attribute__((used)) static void ceph_do_invalidate_pages(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 u32 orig_gen;
 int check = 0;

 mutex_lock(&ci->i_truncate_mutex);

 if (READ_ONCE(fsc->mount_state) == CEPH_MOUNT_SHUTDOWN) {
  pr_warn_ratelimited("invalidate_pages %p %lld forced umount\n",
        inode, ceph_ino(inode));
  mapping_set_error(inode->i_mapping, -EIO);
  truncate_pagecache(inode, 0);
  mutex_unlock(&ci->i_truncate_mutex);
  goto out;
 }

 spin_lock(&ci->i_ceph_lock);
 dout("invalidate_pages %p gen %d revoking %d\n", inode,
      ci->i_rdcache_gen, ci->i_rdcache_revoking);
 if (ci->i_rdcache_revoking != ci->i_rdcache_gen) {
  if (__ceph_caps_revoking_other(ci, ((void*)0), CEPH_CAP_FILE_CACHE))
   check = 1;
  spin_unlock(&ci->i_ceph_lock);
  mutex_unlock(&ci->i_truncate_mutex);
  goto out;
 }
 orig_gen = ci->i_rdcache_gen;
 spin_unlock(&ci->i_ceph_lock);

 if (invalidate_inode_pages2(inode->i_mapping) < 0) {
  pr_err("invalidate_pages %p fails\n", inode);
 }

 spin_lock(&ci->i_ceph_lock);
 if (orig_gen == ci->i_rdcache_gen &&
     orig_gen == ci->i_rdcache_revoking) {
  dout("invalidate_pages %p gen %d successful\n", inode,
       ci->i_rdcache_gen);
  ci->i_rdcache_revoking--;
  check = 1;
 } else {
  dout("invalidate_pages %p gen %d raced, now %d revoking %d\n",
       inode, orig_gen, ci->i_rdcache_gen,
       ci->i_rdcache_revoking);
  if (__ceph_caps_revoking_other(ci, ((void*)0), CEPH_CAP_FILE_CACHE))
   check = 1;
 }
 spin_unlock(&ci->i_ceph_lock);
 mutex_unlock(&ci->i_truncate_mutex);
out:
 if (check)
  ceph_check_caps(ci, 0, ((void*)0));
}
