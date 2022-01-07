
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct p9_fid {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct bio_vec {scalar_t__ bv_len; struct page* bv_page; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int P9_DEBUG_VFS ;
 scalar_t__ PAGE_SIZE ;
 int PageLocked (struct page*) ;
 int READ ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int iov_iter_bvec (struct iov_iter*,int ,struct bio_vec*,int,scalar_t__) ;
 int p9_client_read (struct p9_fid*,int ,struct iov_iter*,int*) ;
 int p9_debug (int ,char*) ;
 int page_offset (struct page*) ;
 int unlock_page (struct page*) ;
 int v9fs_readpage_from_fscache (struct inode*,struct page*) ;
 int v9fs_readpage_to_fscache (struct inode*,struct page*) ;
 int v9fs_uncache_page (struct inode*,struct page*) ;
 int zero_user (struct page*,int,scalar_t__) ;

__attribute__((used)) static int v9fs_fid_readpage(void *data, struct page *page)
{
 struct p9_fid *fid = data;
 struct inode *inode = page->mapping->host;
 struct bio_vec bvec = {.bv_page = page, .bv_len = PAGE_SIZE};
 struct iov_iter to;
 int retval, err;

 p9_debug(P9_DEBUG_VFS, "\n");

 BUG_ON(!PageLocked(page));

 retval = v9fs_readpage_from_fscache(inode, page);
 if (retval == 0)
  return retval;

 iov_iter_bvec(&to, READ, &bvec, 1, PAGE_SIZE);

 retval = p9_client_read(fid, page_offset(page), &to, &err);
 if (err) {
  v9fs_uncache_page(inode, page);
  retval = err;
  goto done;
 }

 zero_user(page, retval, PAGE_SIZE - retval);
 flush_dcache_page(page);
 SetPageUptodate(page);

 v9fs_readpage_to_fscache(inode, page);
 retval = 0;

done:
 unlock_page(page);
 return retval;
}
