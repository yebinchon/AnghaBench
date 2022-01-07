
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_ALIGN (size_t) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;

void vbg_req_free(void *req, size_t len)
{
 if (!req)
  return;

 free_pages((unsigned long)req, get_order(PAGE_ALIGN(len)));
}
