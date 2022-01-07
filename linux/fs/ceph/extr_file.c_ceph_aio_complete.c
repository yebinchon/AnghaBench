
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; int i_inline_version; } ;
struct ceph_aio_request {int error; int total_len; int prealloc_cf; TYPE_1__* iocb; scalar_t__ write; int pending_reqs; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ ki_pos; int (* ki_complete ) (TYPE_1__*,int,int ) ;} ;


 int CEPH_CAP_FILE_RD ;
 int CEPH_CAP_FILE_WR ;
 int CEPH_INLINE_NONE ;
 int CHECK_CAPS_AUTHONLY ;
 int __ceph_mark_dirty_caps (struct ceph_inode_info*,int ,int *) ;
 int __mark_inode_dirty (struct inode*,int) ;
 int atomic_dec_and_test (int *) ;
 int ceph_check_caps (struct ceph_inode_info*,int ,int *) ;
 int ceph_free_cap_flush (int ) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 scalar_t__ ceph_inode_set_size (struct inode*,scalar_t__) ;
 int ceph_put_cap_refs (struct ceph_inode_info*,int ) ;
 int dout (char*,struct inode*,int) ;
 scalar_t__ i_size_read (struct inode*) ;
 int kfree (struct ceph_aio_request*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*,int,int ) ;

__attribute__((used)) static void ceph_aio_complete(struct inode *inode,
         struct ceph_aio_request *aio_req)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 int ret;

 if (!atomic_dec_and_test(&aio_req->pending_reqs))
  return;

 ret = aio_req->error;
 if (!ret)
  ret = aio_req->total_len;

 dout("ceph_aio_complete %p rc %d\n", inode, ret);

 if (ret >= 0 && aio_req->write) {
  int dirty;

  loff_t endoff = aio_req->iocb->ki_pos + aio_req->total_len;
  if (endoff > i_size_read(inode)) {
   if (ceph_inode_set_size(inode, endoff))
    ceph_check_caps(ci, CHECK_CAPS_AUTHONLY, ((void*)0));
  }

  spin_lock(&ci->i_ceph_lock);
  ci->i_inline_version = CEPH_INLINE_NONE;
  dirty = __ceph_mark_dirty_caps(ci, CEPH_CAP_FILE_WR,
            &aio_req->prealloc_cf);
  spin_unlock(&ci->i_ceph_lock);
  if (dirty)
   __mark_inode_dirty(inode, dirty);

 }

 ceph_put_cap_refs(ci, (aio_req->write ? CEPH_CAP_FILE_WR :
      CEPH_CAP_FILE_RD));

 aio_req->iocb->ki_complete(aio_req->iocb, ret, 0);

 ceph_free_cap_flush(aio_req->prealloc_cf);
 kfree(aio_req);
}
