
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_buffer {int dummy; } ;


 scalar_t__ QBUFF_PER_PAGE ;
 int free_page (unsigned long) ;

void qdio_free_buffers(struct qdio_buffer **buf, unsigned int count)
{
 int pos;

 for (pos = 0; pos < count; pos += QBUFF_PER_PAGE)
  free_page((unsigned long) buf[pos]);
}
