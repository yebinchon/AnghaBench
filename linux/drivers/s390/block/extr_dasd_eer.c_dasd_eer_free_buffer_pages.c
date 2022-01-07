
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_page (unsigned long) ;

__attribute__((used)) static void dasd_eer_free_buffer_pages(char **buf, int no_pages)
{
 int i;

 for (i = 0; i < no_pages; i++)
  free_page((unsigned long) buf[i]);
}
