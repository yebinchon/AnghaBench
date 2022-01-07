
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xattr_buf ;
typedef int u64 ;
struct page {int dummy; } ;
struct inode {int i_mtime; int i_mapping; } ;
struct file {int dummy; } ;
struct ceph_osd_request {int r_mtime; } ;
struct ceph_inode_info {int i_inline_version; int i_truncate_size; int i_truncate_seq; int i_layout; int i_ceph_lock; } ;
struct ceph_fs_client {TYPE_1__* client; } ;
typedef char __le64 ;
struct TYPE_2__ {int osdc; } ;


 int CEPH_CAP_FILE_CACHE ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_INLINE_NONE ;
 int CEPH_OSD_CMPXATTR_MODE_U64 ;
 int CEPH_OSD_CMPXATTR_OP_GT ;
 int CEPH_OSD_FLAG_WRITE ;
 int CEPH_OSD_OP_CMPXATTR ;
 int CEPH_OSD_OP_CREATE ;
 int CEPH_OSD_OP_SETXATTR ;
 int CEPH_OSD_OP_WRITE ;
 int CEPH_STAT_CAP_INLINE_DATA ;
 int ECANCELED ;
 int ENODATA ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct ceph_osd_request*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct ceph_osd_request*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int __ceph_do_getattr (struct inode*,struct page*,int ,int) ;
 int __free_pages (struct page*,int ) ;
 struct page* __page_cache_alloc (int ) ;
 int ceph_caps_issued (struct ceph_inode_info*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 struct ceph_osd_request* ceph_osdc_new_request (int *,int *,int ,int ,int*,int,int,int ,int ,int *,int ,int ,int) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (int *,struct ceph_osd_request*,int) ;
 int ceph_osdc_wait_request (int *,struct ceph_osd_request*) ;
 int ceph_vino (struct inode*) ;
 int ceph_vinop (struct inode*) ;
 char cpu_to_le64 (int) ;
 int dout (char*,struct inode*,int ,int,...) ;
 struct inode* file_inode (struct file*) ;
 struct page* find_get_page (int ,int ) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int osd_req_op_extent_osd_data_pages (struct ceph_osd_request*,int,struct page**,int,int ,int,int) ;
 int osd_req_op_xattr_init (struct ceph_osd_request*,int,int ,char*,char*,int,int ,int ) ;
 int put_page (struct page*) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;

int ceph_uninline_data(struct file *filp, struct page *locked_page)
{
 struct inode *inode = file_inode(filp);
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 struct ceph_osd_request *req;
 struct page *page = ((void*)0);
 u64 len, inline_version;
 int err = 0;
 bool from_pagecache = 0;

 spin_lock(&ci->i_ceph_lock);
 inline_version = ci->i_inline_version;
 spin_unlock(&ci->i_ceph_lock);

 dout("uninline_data %p %llx.%llx inline_version %llu\n",
      inode, ceph_vinop(inode), inline_version);

 if (inline_version == 1 ||
     inline_version == CEPH_INLINE_NONE)
  goto out;

 if (locked_page) {
  page = locked_page;
  WARN_ON(!PageUptodate(page));
 } else if (ceph_caps_issued(ci) &
     (CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO)) {
  page = find_get_page(inode->i_mapping, 0);
  if (page) {
   if (PageUptodate(page)) {
    from_pagecache = 1;
    lock_page(page);
   } else {
    put_page(page);
    page = ((void*)0);
   }
  }
 }

 if (page) {
  len = i_size_read(inode);
  if (len > PAGE_SIZE)
   len = PAGE_SIZE;
 } else {
  page = __page_cache_alloc(GFP_NOFS);
  if (!page) {
   err = -ENOMEM;
   goto out;
  }
  err = __ceph_do_getattr(inode, page,
     CEPH_STAT_CAP_INLINE_DATA, 1);
  if (err < 0) {

   if (err == -ENODATA)
    err = 0;
   goto out;
  }
  len = err;
 }

 req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout,
        ceph_vino(inode), 0, &len, 0, 1,
        CEPH_OSD_OP_CREATE, CEPH_OSD_FLAG_WRITE,
        ((void*)0), 0, 0, 0);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto out;
 }

 req->r_mtime = inode->i_mtime;
 err = ceph_osdc_start_request(&fsc->client->osdc, req, 0);
 if (!err)
  err = ceph_osdc_wait_request(&fsc->client->osdc, req);
 ceph_osdc_put_request(req);
 if (err < 0)
  goto out;

 req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout,
        ceph_vino(inode), 0, &len, 1, 3,
        CEPH_OSD_OP_WRITE, CEPH_OSD_FLAG_WRITE,
        ((void*)0), ci->i_truncate_seq,
        ci->i_truncate_size, 0);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto out;
 }

 osd_req_op_extent_osd_data_pages(req, 1, &page, len, 0, 0, 0);

 {
  __le64 xattr_buf = cpu_to_le64(inline_version);
  err = osd_req_op_xattr_init(req, 0, CEPH_OSD_OP_CMPXATTR,
         "inline_version", &xattr_buf,
         sizeof(xattr_buf),
         CEPH_OSD_CMPXATTR_OP_GT,
         CEPH_OSD_CMPXATTR_MODE_U64);
  if (err)
   goto out_put;
 }

 {
  char xattr_buf[32];
  int xattr_len = snprintf(xattr_buf, sizeof(xattr_buf),
      "%llu", inline_version);
  err = osd_req_op_xattr_init(req, 2, CEPH_OSD_OP_SETXATTR,
         "inline_version",
         xattr_buf, xattr_len, 0, 0);
  if (err)
   goto out_put;
 }

 req->r_mtime = inode->i_mtime;
 err = ceph_osdc_start_request(&fsc->client->osdc, req, 0);
 if (!err)
  err = ceph_osdc_wait_request(&fsc->client->osdc, req);
out_put:
 ceph_osdc_put_request(req);
 if (err == -ECANCELED)
  err = 0;
out:
 if (page && page != locked_page) {
  if (from_pagecache) {
   unlock_page(page);
   put_page(page);
  } else
   __free_pages(page, 0);
 }

 dout("uninline_data %p %llx.%llx inline_version %llu = %d\n",
      inode, ceph_vinop(inode), inline_version, err);
 return err;
}
