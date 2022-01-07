
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;


 int FOLL_WRITE ;
 int dax_dbg (char*,void*,...) ;
 int get_user_pages_fast (unsigned long,int,int ,void**) ;

__attribute__((used)) static int dax_lock_page(void *va, struct page **p)
{
 int ret;

 dax_dbg("uva %p", va);

 ret = get_user_pages_fast((unsigned long)va, 1, FOLL_WRITE, p);
 if (ret == 1) {
  dax_dbg("locked page %p, for VA %p", *p, va);
  return 0;
 }

 dax_dbg("get_user_pages failed, va=%p, ret=%d", va, ret);
 return -1;
}
