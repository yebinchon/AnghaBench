
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int index; } ;
struct iov_iter {int dummy; } ;
struct cifs_readdata {unsigned int nr_pages; unsigned int page_offset; scalar_t__ got_bytes; unsigned int tailsz; unsigned int pagesz; scalar_t__ mr; struct page** pages; TYPE_1__* mapping; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_4__ {int server_eof; } ;
struct TYPE_3__ {int host; } ;


 TYPE_2__* CIFS_I (int ) ;
 int ECONNABORTED ;
 int FYI ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int cifs_dbg (int ,char*,int,int) ;
 int cifs_read_page_from_socket (struct TCP_Server_Info*,struct page*,unsigned int,size_t) ;
 int copy_page_from_iter (struct page*,unsigned int,size_t,struct iov_iter*) ;
 int flush_dcache_page (struct page*) ;
 int lru_cache_add_file (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int
readpages_fill_pages(struct TCP_Server_Info *server,
       struct cifs_readdata *rdata, struct iov_iter *iter,
       unsigned int len)
{
 int result = 0;
 unsigned int i;
 u64 eof;
 pgoff_t eof_index;
 unsigned int nr_pages = rdata->nr_pages;
 unsigned int page_offset = rdata->page_offset;


 eof = CIFS_I(rdata->mapping->host)->server_eof;
 eof_index = eof ? (eof - 1) >> PAGE_SHIFT : 0;
 cifs_dbg(FYI, "eof=%llu eof_index=%lu\n", eof, eof_index);

 rdata->got_bytes = 0;
 rdata->tailsz = PAGE_SIZE;
 for (i = 0; i < nr_pages; i++) {
  struct page *page = rdata->pages[i];
  unsigned int to_read = rdata->pagesz;
  size_t n;

  if (i == 0)
   to_read -= page_offset;
  else
   page_offset = 0;

  n = to_read;

  if (len >= to_read) {
   len -= to_read;
  } else if (len > 0) {

   zero_user(page, len + page_offset, to_read - len);
   n = rdata->tailsz = len;
   len = 0;
  } else if (page->index > eof_index) {
   zero_user(page, 0, PAGE_SIZE);
   lru_cache_add_file(page);
   flush_dcache_page(page);
   SetPageUptodate(page);
   unlock_page(page);
   put_page(page);
   rdata->pages[i] = ((void*)0);
   rdata->nr_pages--;
   continue;
  } else {

   lru_cache_add_file(page);
   unlock_page(page);
   put_page(page);
   rdata->pages[i] = ((void*)0);
   rdata->nr_pages--;
   continue;
  }

  if (iter)
   result = copy_page_from_iter(
     page, page_offset, n, iter);




  else
   result = cifs_read_page_from_socket(
     server, page, page_offset, n);
  if (result < 0)
   break;

  rdata->got_bytes += result;
 }

 return rdata->got_bytes > 0 && result != -ECONNABORTED ?
      rdata->got_bytes : result;
}
