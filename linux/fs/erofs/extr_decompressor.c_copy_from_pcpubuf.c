
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned short PAGE_SIZE ;
 char* kmap_atomic (struct page* const) ;
 int kunmap_atomic (char*) ;
 int memcpy (char*,char const*,int ) ;
 int min_t (int ,unsigned int const,int) ;
 int uint ;

__attribute__((used)) static void copy_from_pcpubuf(struct page **out, const char *dst,
         unsigned short pageofs_out,
         unsigned int outputsize)
{
 const char *end = dst + outputsize;
 const unsigned int righthalf = PAGE_SIZE - pageofs_out;
 const char *cur = dst - pageofs_out;

 while (cur < end) {
  struct page *const page = *out++;

  if (page) {
   char *buf = kmap_atomic(page);

   if (cur >= dst) {
    memcpy(buf, cur, min_t(uint, PAGE_SIZE,
             end - cur));
   } else {
    memcpy(buf + pageofs_out, cur + pageofs_out,
           min_t(uint, righthalf, end - cur));
   }
   kunmap_atomic(buf);
  }
  cur += PAGE_SIZE;
 }
}
