
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ceph_snap_context {scalar_t__ seq; } ;
struct ceph_inode_info {int i_cap_wq; struct ceph_snap_context* i_head_snapc; } ;
struct ceph_fs_client {int mount_state; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ CEPH_MOUNT_SHUTDOWN ;
 int EAGAIN ;
 int EINPROGRESS ;
 int EIO ;
 int ERESTARTSYS ;
 scalar_t__ PAGE_MASK ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ READ_ONCE (int ) ;
 int ceph_do_readpage (struct file*,struct page*) ;
 struct ceph_snap_context* ceph_get_snap_context (struct ceph_snap_context*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 int ceph_put_snap_context (struct ceph_snap_context*) ;
 int ceph_queue_writeback (struct inode*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int context_is_writeable_or_written (struct inode*,struct ceph_snap_context*) ;
 int dout (char*,struct page*,...) ;
 struct inode* file_inode (struct file*) ;
 struct ceph_snap_context* get_oldest_context (struct inode*,int *,int *) ;
 scalar_t__ i_size_read (struct inode*) ;
 struct ceph_snap_context* page_snap_context (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_event_killable (int ,int ) ;
 int wait_on_page_writeback (struct page*) ;
 int writepage_nounlock (struct page*,int *) ;
 int zero_user_segments (struct page*,int ,int,int,unsigned int) ;

__attribute__((used)) static int ceph_update_writeable_page(struct file *file,
       loff_t pos, unsigned len,
       struct page *page)
{
 struct inode *inode = file_inode(file);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 struct ceph_inode_info *ci = ceph_inode(inode);
 loff_t page_off = pos & PAGE_MASK;
 int pos_in_page = pos & ~PAGE_MASK;
 int end_in_page = pos_in_page + len;
 loff_t i_size;
 int r;
 struct ceph_snap_context *snapc, *oldest;

 if (READ_ONCE(fsc->mount_state) == CEPH_MOUNT_SHUTDOWN) {
  dout(" page %p forced umount\n", page);
  unlock_page(page);
  return -EIO;
 }

retry_locked:

 wait_on_page_writeback(page);

 snapc = page_snap_context(page);
 if (snapc && snapc != ci->i_head_snapc) {




  oldest = get_oldest_context(inode, ((void*)0), ((void*)0));
  if (snapc->seq > oldest->seq) {
   ceph_put_snap_context(oldest);
   dout(" page %p snapc %p not current or oldest\n",
        page, snapc);




   snapc = ceph_get_snap_context(snapc);
   unlock_page(page);
   ceph_queue_writeback(inode);
   r = wait_event_killable(ci->i_cap_wq,
          context_is_writeable_or_written(inode, snapc));
   ceph_put_snap_context(snapc);
   if (r == -ERESTARTSYS)
    return r;
   return -EAGAIN;
  }
  ceph_put_snap_context(oldest);


  dout(" page %p snapc %p not current, but oldest\n",
       page, snapc);
  if (!clear_page_dirty_for_io(page))
   goto retry_locked;
  r = writepage_nounlock(page, ((void*)0));
  if (r < 0)
   goto fail_unlock;
  goto retry_locked;
 }

 if (PageUptodate(page)) {
  dout(" page %p already uptodate\n", page);
  return 0;
 }


 if (pos_in_page == 0 && len == PAGE_SIZE)
  return 0;


 i_size = i_size_read(inode);

 if (page_off >= i_size ||
     (pos_in_page == 0 && (pos+len) >= i_size &&
      end_in_page - pos_in_page != PAGE_SIZE)) {
  dout(" zeroing %p 0 - %d and %d - %d\n",
       page, pos_in_page, end_in_page, (int)PAGE_SIZE);
  zero_user_segments(page,
       0, pos_in_page,
       end_in_page, PAGE_SIZE);
  return 0;
 }


 r = ceph_do_readpage(file, page);
 if (r < 0) {
  if (r == -EINPROGRESS)
   return -EAGAIN;
  goto fail_unlock;
 }
 goto retry_locked;
fail_unlock:
 unlock_page(page);
 return r;
}
