
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct writeback_control {int pages_skipped; } ;
struct page {scalar_t__ private; int index; TYPE_2__* mapping; } ;
struct inode {int i_data; int i_mtime; } ;
struct ceph_writeback_ctl {int truncate_size; int truncate_seq; int i_size; } ;
struct ceph_snap_context {scalar_t__ seq; } ;
struct ceph_inode_info {int i_layout; } ;
struct ceph_fs_client {int blacklisted; TYPE_4__* mount_options; int writeback_count; TYPE_3__* client; } ;
typedef int loff_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int congestion_kb; } ;
struct TYPE_8__ {int osdc; } ;
struct TYPE_7__ {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_6__ {int (* invalidatepage ) (struct page*,int ,int) ;} ;


 int BLK_RW_ASYNC ;
 scalar_t__ CONGESTION_OFF_THRESH (int ) ;
 scalar_t__ CONGESTION_ON_THRESH (int ) ;
 int ClearPagePrivate (struct page*) ;
 int EBLACKLISTED ;
 int ERESTARTSYS ;
 int PAGE_SIZE ;
 int PF_MEMALLOC ;
 int WARN_ON (int) ;
 scalar_t__ atomic_long_dec_return (int *) ;
 scalar_t__ atomic_long_inc_return (int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 int ceph_osdc_writepages (int *,int ,int *,struct ceph_snap_context*,int ,int,int ,int ,int *,struct page**,int) ;
 int ceph_put_snap_context (struct ceph_snap_context*) ;
 int ceph_put_wrbuffer_cap_refs (struct ceph_inode_info*,int,struct ceph_snap_context*) ;
 int ceph_vino (struct inode*) ;
 int clear_bdi_congested (int ,int ) ;
 TYPE_5__* current ;
 int dout (char*,...) ;
 int end_page_writeback (struct page*) ;
 struct ceph_snap_context* get_oldest_context (struct inode*,struct ceph_writeback_ctl*,struct ceph_snap_context*) ;
 int inode_to_bdi (struct inode*) ;
 int mapping_set_error (int *,int) ;
 int page_offset (struct page*) ;
 struct ceph_snap_context* page_snap_context (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_bdi_congested (int ,int ) ;
 int set_page_writeback (struct page*) ;
 int stub1 (struct page*,int ,int) ;

__attribute__((used)) static int writepage_nounlock(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode;
 struct ceph_inode_info *ci;
 struct ceph_fs_client *fsc;
 struct ceph_snap_context *snapc, *oldest;
 loff_t page_off = page_offset(page);
 int err, len = PAGE_SIZE;
 struct ceph_writeback_ctl ceph_wbc;

 dout("writepage %p idx %lu\n", page, page->index);

 inode = page->mapping->host;
 ci = ceph_inode(inode);
 fsc = ceph_inode_to_client(inode);


 snapc = page_snap_context(page);
 if (!snapc) {
  dout("writepage %p page %p not dirty?\n", inode, page);
  return 0;
 }
 oldest = get_oldest_context(inode, &ceph_wbc, snapc);
 if (snapc->seq > oldest->seq) {
  dout("writepage %p page %p snapc %p not writeable - noop\n",
       inode, page, snapc);

  WARN_ON(!(current->flags & PF_MEMALLOC));
  ceph_put_snap_context(oldest);
  redirty_page_for_writepage(wbc, page);
  return 0;
 }
 ceph_put_snap_context(oldest);


 if (page_off >= ceph_wbc.i_size) {
  dout("%p page eof %llu\n", page, ceph_wbc.i_size);
  page->mapping->a_ops->invalidatepage(page, 0, PAGE_SIZE);
  return 0;
 }

 if (ceph_wbc.i_size < page_off + len)
  len = ceph_wbc.i_size - page_off;

 dout("writepage %p page %p index %lu on %llu~%u snapc %p seq %lld\n",
      inode, page, page->index, page_off, len, snapc, snapc->seq);

 if (atomic_long_inc_return(&fsc->writeback_count) >
     CONGESTION_ON_THRESH(fsc->mount_options->congestion_kb))
  set_bdi_congested(inode_to_bdi(inode), BLK_RW_ASYNC);

 set_page_writeback(page);
 err = ceph_osdc_writepages(&fsc->client->osdc, ceph_vino(inode),
       &ci->i_layout, snapc, page_off, len,
       ceph_wbc.truncate_seq,
       ceph_wbc.truncate_size,
       &inode->i_mtime, &page, 1);
 if (err < 0) {
  struct writeback_control tmp_wbc;
  if (!wbc)
   wbc = &tmp_wbc;
  if (err == -ERESTARTSYS) {

   dout("writepage interrupted page %p\n", page);
   redirty_page_for_writepage(wbc, page);
   end_page_writeback(page);
   return err;
  }
  if (err == -EBLACKLISTED)
   fsc->blacklisted = 1;
  dout("writepage setting page/mapping error %d %p\n",
       err, page);
  mapping_set_error(&inode->i_data, err);
  wbc->pages_skipped++;
 } else {
  dout("writepage cleaned page %p\n", page);
  err = 0;
 }
 page->private = 0;
 ClearPagePrivate(page);
 end_page_writeback(page);
 ceph_put_wrbuffer_cap_refs(ci, 1, snapc);
 ceph_put_snap_context(snapc);

 if (atomic_long_dec_return(&fsc->writeback_count) <
     CONGESTION_OFF_THRESH(fsc->mount_options->congestion_kb))
  clear_bdi_congested(inode_to_bdi(inode), BLK_RW_ASYNC);

 return err;
}
