
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int index; } ;
struct inode {int dummy; } ;
struct ceph_osd_request {int r_result; struct inode* r_inode; } ;
struct ceph_osd_data {scalar_t__ type; struct page** pages; scalar_t__ length; scalar_t__ alignment; } ;
struct TYPE_2__ {int blacklisted; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ;
 int EBLACKLISTED ;
 int ENOENT ;
 scalar_t__ PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int calc_pages_for (int ,int ) ;
 int ceph_fscache_readpage_cancel (struct inode*,struct page*) ;
 TYPE_1__* ceph_inode_to_client (struct inode*) ;
 int ceph_readpage_to_fscache (struct inode*,struct page*) ;
 int dout (char*,struct inode*,...) ;
 int flush_dcache_page (struct page*) ;
 int kfree (struct page**) ;
 struct ceph_osd_data* osd_req_op_extent_osd_data (struct ceph_osd_request*,int ) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,int,scalar_t__) ;

__attribute__((used)) static void finish_read(struct ceph_osd_request *req)
{
 struct inode *inode = req->r_inode;
 struct ceph_osd_data *osd_data;
 int rc = req->r_result <= 0 ? req->r_result : 0;
 int bytes = req->r_result >= 0 ? req->r_result : 0;
 int num_pages;
 int i;

 dout("finish_read %p req %p rc %d bytes %d\n", inode, req, rc, bytes);
 if (rc == -EBLACKLISTED)
  ceph_inode_to_client(inode)->blacklisted = 1;


 osd_data = osd_req_op_extent_osd_data(req, 0);
 BUG_ON(osd_data->type != CEPH_OSD_DATA_TYPE_PAGES);
 num_pages = calc_pages_for((u64)osd_data->alignment,
     (u64)osd_data->length);
 for (i = 0; i < num_pages; i++) {
  struct page *page = osd_data->pages[i];

  if (rc < 0 && rc != -ENOENT) {
   ceph_fscache_readpage_cancel(inode, page);
   goto unlock;
  }
  if (bytes < (int)PAGE_SIZE) {

   int s = bytes < 0 ? 0 : bytes;
   zero_user_segment(page, s, PAGE_SIZE);
  }
   dout("finish_read %p uptodate %p idx %lu\n", inode, page,
       page->index);
  flush_dcache_page(page);
  SetPageUptodate(page);
  ceph_readpage_to_fscache(inode, page);
unlock:
  unlock_page(page);
  put_page(page);
  bytes -= PAGE_SIZE;
 }
 kfree(osd_data->pages);
}
