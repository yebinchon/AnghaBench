
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int i_ceph_lock; } ;
struct ceph_file_info {int fmode; } ;
struct ceph_cap_flush {int dummy; } ;
typedef scalar_t__ loff_t ;


 int CEPH_CAP_FILE_BUFFER ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_CAP_FILE_WR ;
 int CEPH_FILE_MODE_LAZY ;
 scalar_t__ CEPH_INLINE_NONE ;
 scalar_t__ CEPH_NOSNAP ;
 long ENOMEM ;
 long EOPNOTSUPP ;
 int EROFS ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int S_ISREG (int ) ;
 int __ceph_mark_dirty_caps (struct ceph_inode_info*,int ,struct ceph_cap_flush**) ;
 int __mark_inode_dirty (struct inode*,int) ;
 struct ceph_cap_flush* ceph_alloc_cap_flush () ;
 int ceph_free_cap_flush (struct ceph_cap_flush*) ;
 int ceph_get_caps (struct file*,int ,int,scalar_t__,int*,int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_put_cap_refs (struct ceph_inode_info*,int) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int ceph_uninline_data (struct file*,int *) ;
 int ceph_zero_objects (struct inode*,scalar_t__,scalar_t__) ;
 int ceph_zero_pagecache_range (struct inode*,scalar_t__,scalar_t__) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long ceph_fallocate(struct file *file, int mode,
    loff_t offset, loff_t length)
{
 struct ceph_file_info *fi = file->private_data;
 struct inode *inode = file_inode(file);
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_cap_flush *prealloc_cf;
 int want, got = 0;
 int dirty;
 int ret = 0;
 loff_t endoff = 0;
 loff_t size;

 if (mode != (FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE))
  return -EOPNOTSUPP;

 if (!S_ISREG(inode->i_mode))
  return -EOPNOTSUPP;

 prealloc_cf = ceph_alloc_cap_flush();
 if (!prealloc_cf)
  return -ENOMEM;

 inode_lock(inode);

 if (ceph_snap(inode) != CEPH_NOSNAP) {
  ret = -EROFS;
  goto unlock;
 }

 if (ci->i_inline_version != CEPH_INLINE_NONE) {
  ret = ceph_uninline_data(file, ((void*)0));
  if (ret < 0)
   goto unlock;
 }

 size = i_size_read(inode);


 if (offset >= size)
  goto unlock;
 if ((offset + length) > size)
  length = size - offset;

 if (fi->fmode & CEPH_FILE_MODE_LAZY)
  want = CEPH_CAP_FILE_BUFFER | CEPH_CAP_FILE_LAZYIO;
 else
  want = CEPH_CAP_FILE_BUFFER;

 ret = ceph_get_caps(file, CEPH_CAP_FILE_WR, want, endoff, &got, ((void*)0));
 if (ret < 0)
  goto unlock;

 ceph_zero_pagecache_range(inode, offset, length);
 ret = ceph_zero_objects(inode, offset, length);

 if (!ret) {
  spin_lock(&ci->i_ceph_lock);
  ci->i_inline_version = CEPH_INLINE_NONE;
  dirty = __ceph_mark_dirty_caps(ci, CEPH_CAP_FILE_WR,
            &prealloc_cf);
  spin_unlock(&ci->i_ceph_lock);
  if (dirty)
   __mark_inode_dirty(inode, dirty);
 }

 ceph_put_cap_refs(ci, got);
unlock:
 inode_unlock(inode);
 ceph_free_cap_flush(prealloc_cf);
 return ret;
}
