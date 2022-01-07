
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct z_erofs_decompress_req {unsigned int inputsize; struct page** in; } ;
struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 void* erofs_get_pcpubuf (int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned int) ;
 unsigned int min_t (int ,unsigned int,unsigned int) ;
 int uint ;

__attribute__((used)) static void *generic_copy_inplace_data(struct z_erofs_decompress_req *rq,
           u8 *src, unsigned int pageofs_in)
{




 struct page **in = rq->in;
 u8 *const tmp = erofs_get_pcpubuf(0);
 u8 *tmpp = tmp;
 unsigned int inlen = rq->inputsize - pageofs_in;
 unsigned int count = min_t(uint, inlen, PAGE_SIZE - pageofs_in);

 while (tmpp < tmp + inlen) {
  if (!src)
   src = kmap_atomic(*in);
  memcpy(tmpp, src + pageofs_in, count);
  kunmap_atomic(src);
  src = ((void*)0);
  tmpp += count;
  pageofs_in = 0;
  count = PAGE_SIZE;
  ++in;
 }
 return tmp;
}
