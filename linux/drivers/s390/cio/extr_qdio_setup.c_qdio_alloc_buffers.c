
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_buffer {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QBUFF_PER_PAGE ;
 scalar_t__ get_zeroed_page (int ) ;
 int qdio_free_buffers (struct qdio_buffer**,unsigned int) ;

int qdio_alloc_buffers(struct qdio_buffer **buf, unsigned int count)
{
 int pos;

 for (pos = 0; pos < count; pos += QBUFF_PER_PAGE) {
  buf[pos] = (void *) get_zeroed_page(GFP_KERNEL);
  if (!buf[pos]) {
   qdio_free_buffers(buf, count);
   return -ENOMEM;
  }
 }
 for (pos = 0; pos < count; pos++)
  if (pos % QBUFF_PER_PAGE)
   buf[pos] = buf[pos - 1] + 1;
 return 0;
}
