
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {TYPE_1__* i_sb; int i_data; } ;
struct ceph_inode_info {scalar_t__ i_truncate_pending; int i_wrbuffer_ref_head; int i_wrbuffer_ref; scalar_t__ i_truncate_size; int i_cap_wq; int i_truncate_mutex; int i_ceph_lock; scalar_t__ i_wr_ref; scalar_t__ i_rd_ref; } ;
struct TYPE_2__ {int s_maxbytes; } ;


 int CHECK_CAPS_AUTHONLY ;
 int WARN_ON_ONCE (int) ;
 int ceph_check_caps (struct ceph_inode_info*,int ,int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int dout (char*,struct inode*,...) ;
 int filemap_write_and_wait_range (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;
 int wake_up_all (int *) ;

void __ceph_do_pending_vmtruncate(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 u64 to;
 int wrbuffer_refs, finish = 0;

 mutex_lock(&ci->i_truncate_mutex);
retry:
 spin_lock(&ci->i_ceph_lock);
 if (ci->i_truncate_pending == 0) {
  dout("__do_pending_vmtruncate %p none pending\n", inode);
  spin_unlock(&ci->i_ceph_lock);
  mutex_unlock(&ci->i_truncate_mutex);
  return;
 }





 if (ci->i_wrbuffer_ref_head < ci->i_wrbuffer_ref) {
  spin_unlock(&ci->i_ceph_lock);
  dout("__do_pending_vmtruncate %p flushing snaps first\n",
       inode);
  filemap_write_and_wait_range(&inode->i_data, 0,
          inode->i_sb->s_maxbytes);
  goto retry;
 }


 WARN_ON_ONCE(ci->i_rd_ref || ci->i_wr_ref);

 to = ci->i_truncate_size;
 wrbuffer_refs = ci->i_wrbuffer_ref;
 dout("__do_pending_vmtruncate %p (%d) to %lld\n", inode,
      ci->i_truncate_pending, to);
 spin_unlock(&ci->i_ceph_lock);

 truncate_pagecache(inode, to);

 spin_lock(&ci->i_ceph_lock);
 if (to == ci->i_truncate_size) {
  ci->i_truncate_pending = 0;
  finish = 1;
 }
 spin_unlock(&ci->i_ceph_lock);
 if (!finish)
  goto retry;

 mutex_unlock(&ci->i_truncate_mutex);

 if (wrbuffer_refs == 0)
  ceph_check_caps(ci, CHECK_CAPS_AUTHONLY, ((void*)0));

 wake_up_all(&ci->i_cap_wq);
}
