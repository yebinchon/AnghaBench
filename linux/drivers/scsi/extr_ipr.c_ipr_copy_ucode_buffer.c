
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct scatterlist {int length; } ;
struct page {int dummy; } ;
struct ipr_sglist {int order; int buffer_len; struct scatterlist* scatterlist; } ;


 int PAGE_SIZE ;
 int ipr_trace ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (void*,int *,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;

__attribute__((used)) static int ipr_copy_ucode_buffer(struct ipr_sglist *sglist,
     u8 *buffer, u32 len)
{
 int bsize_elem, i, result = 0;
 struct scatterlist *sg;
 void *kaddr;


 bsize_elem = PAGE_SIZE * (1 << sglist->order);

 sg = sglist->scatterlist;

 for (i = 0; i < (len / bsize_elem); i++, sg = sg_next(sg),
   buffer += bsize_elem) {
  struct page *page = sg_page(sg);

  kaddr = kmap(page);
  memcpy(kaddr, buffer, bsize_elem);
  kunmap(page);

  sg->length = bsize_elem;

  if (result != 0) {
   ipr_trace;
   return result;
  }
 }

 if (len % bsize_elem) {
  struct page *page = sg_page(sg);

  kaddr = kmap(page);
  memcpy(kaddr, buffer, len % bsize_elem);
  kunmap(page);

  sg->length = len % bsize_elem;
 }

 sglist->buffer_len = len;
 return result;
}
