
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dasd_eer_free_buffer_pages (char**,int) ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int dasd_eer_allocate_buffer_pages(char **buf, int no_pages)
{
 int i;

 for (i = 0; i < no_pages; i++) {
  buf[i] = (char *) get_zeroed_page(GFP_KERNEL);
  if (!buf[i]) {
   dasd_eer_free_buffer_pages(buf, i);
   return -ENOMEM;
  }
 }
 return 0;
}
