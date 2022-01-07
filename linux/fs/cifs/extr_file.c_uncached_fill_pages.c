
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iov_iter {int dummy; } ;
struct cifs_readdata {unsigned int nr_pages; unsigned int page_offset; scalar_t__ got_bytes; unsigned int tailsz; unsigned int pagesz; scalar_t__ mr; struct page** pages; } ;
struct TCP_Server_Info {int dummy; } ;


 int ECONNABORTED ;
 unsigned int PAGE_SIZE ;
 int cifs_read_page_from_socket (struct TCP_Server_Info*,struct page*,unsigned int,size_t) ;
 int copy_page_from_iter (struct page*,unsigned int,size_t,struct iov_iter*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int
uncached_fill_pages(struct TCP_Server_Info *server,
      struct cifs_readdata *rdata, struct iov_iter *iter,
      unsigned int len)
{
 int result = 0;
 unsigned int i;
 unsigned int nr_pages = rdata->nr_pages;
 unsigned int page_offset = rdata->page_offset;

 rdata->got_bytes = 0;
 rdata->tailsz = PAGE_SIZE;
 for (i = 0; i < nr_pages; i++) {
  struct page *page = rdata->pages[i];
  size_t n;
  unsigned int segment_size = rdata->pagesz;

  if (i == 0)
   segment_size -= page_offset;
  else
   page_offset = 0;


  if (len <= 0) {

   rdata->pages[i] = ((void*)0);
   rdata->nr_pages--;
   put_page(page);
   continue;
  }

  n = len;
  if (len >= segment_size)

   n = segment_size;
  else
   rdata->tailsz = len;
  len -= n;

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
