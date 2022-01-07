
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct TCP_Server_Info {int total_read; } ;


 unsigned int PAGE_SIZE ;
 int cifs_read_page_from_socket (struct TCP_Server_Info*,struct page*,int ,size_t) ;
 int zero_user (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int
read_data_into_pages(struct TCP_Server_Info *server, struct page **pages,
       unsigned int npages, unsigned int len)
{
 int i;
 int length;

 for (i = 0; i < npages; i++) {
  struct page *page = pages[i];
  size_t n;

  n = len;
  if (len >= PAGE_SIZE) {

   n = PAGE_SIZE;
   len -= n;
  } else {
   zero_user(page, len, PAGE_SIZE - len);
   len = 0;
  }
  length = cifs_read_page_from_socket(server, page, 0, n);
  if (length < 0)
   return length;
  server->total_read += length;
 }

 return 0;
}
