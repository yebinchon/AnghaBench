
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int i_cap_wq; } ;
struct ceph_fs_client {int filp_gen; } ;
struct ceph_file_info {int fmode; scalar_t__ filp_gen; int num_locks; } ;
typedef int loff_t ;


 int CEPH_CAP_FILE_CACHE ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_CAP_FILE_RD ;
 int CEPH_FILE_MODE_WR ;
 scalar_t__ CEPH_INLINE_NONE ;
 int CEPH_STAT_CAP_INLINE_DATA ;
 int CHECK_FILELOCK ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int EBADF ;
 int ERESTARTSYS ;
 int ESTALE ;
 int MAX_SCHEDULE_TIMEOUT ;
 int NON_BLOCKING ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ READ_ONCE (int ) ;
 int TASK_INTERRUPTIBLE ;
 int __ceph_do_getattr (struct inode*,int *,int ,int) ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int ceph_fscache_revalidate_cookie (struct ceph_inode_info*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 int ceph_pool_perm_check (struct inode*,int) ;
 int ceph_put_cap_refs (struct ceph_inode_info*,int) ;
 int ceph_renew_caps (struct inode*) ;
 int check_max_size (struct inode*,int ) ;
 int current ;
 struct inode* file_inode (struct file*) ;
 struct page* find_get_page (int ,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int put_page (struct page*) ;
 int remove_wait_queue (int *,int *) ;
 scalar_t__ signal_pending (int ) ;
 int try_get_cap_refs (struct inode*,int,int,int ,int,int*) ;
 int wait ;
 int wait_woken (int *,int ,int ) ;
 int woken_wake_function ;

int ceph_get_caps(struct file *filp, int need, int want,
    loff_t endoff, int *got, struct page **pinned_page)
{
 struct ceph_file_info *fi = filp->private_data;
 struct inode *inode = file_inode(filp);
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 int ret, _got, flags;

 ret = ceph_pool_perm_check(inode, need);
 if (ret < 0)
  return ret;

 if ((fi->fmode & CEPH_FILE_MODE_WR) &&
     fi->filp_gen != READ_ONCE(fsc->filp_gen))
  return -EBADF;

 while (1) {
  if (endoff > 0)
   check_max_size(inode, endoff);

  flags = atomic_read(&fi->num_locks) ? CHECK_FILELOCK : 0;
  _got = 0;
  ret = try_get_cap_refs(inode, need, want, endoff,
           flags, &_got);
  if (ret == -EAGAIN)
   continue;
  if (!ret) {
   DEFINE_WAIT_FUNC(wait, woken_wake_function);
   add_wait_queue(&ci->i_cap_wq, &wait);

   flags |= NON_BLOCKING;
   while (!(ret = try_get_cap_refs(inode, need, want,
       endoff, flags, &_got))) {
    if (signal_pending(current)) {
     ret = -ERESTARTSYS;
     break;
    }
    wait_woken(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
   }

   remove_wait_queue(&ci->i_cap_wq, &wait);
   if (ret == -EAGAIN)
    continue;
  }

  if ((fi->fmode & CEPH_FILE_MODE_WR) &&
      fi->filp_gen != READ_ONCE(fsc->filp_gen)) {
   if (ret >= 0 && _got)
    ceph_put_cap_refs(ci, _got);
   return -EBADF;
  }

  if (ret < 0) {
   if (ret == -ESTALE) {

    ret = ceph_renew_caps(inode);
    if (ret == 0)
     continue;
   }
   return ret;
  }

  if (ci->i_inline_version != CEPH_INLINE_NONE &&
      (_got & (CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO)) &&
      i_size_read(inode) > 0) {
   struct page *page =
    find_get_page(inode->i_mapping, 0);
   if (page) {
    if (PageUptodate(page)) {
     *pinned_page = page;
     break;
    }
    put_page(page);
   }




   ceph_put_cap_refs(ci, _got);
   _got = 0;





   ret = __ceph_do_getattr(inode, ((void*)0),
      CEPH_STAT_CAP_INLINE_DATA,
      1);
   if (ret < 0)
    return ret;
   continue;
  }
  break;
 }

 if ((_got & CEPH_CAP_FILE_RD) && (_got & CEPH_CAP_FILE_CACHE))
  ceph_fscache_revalidate_cookie(ci);

 *got = _got;
 return 0;
}
