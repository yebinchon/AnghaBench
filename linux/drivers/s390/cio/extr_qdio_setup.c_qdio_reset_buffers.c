
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_buffer {int dummy; } ;


 int memset (struct qdio_buffer*,int ,int) ;

void qdio_reset_buffers(struct qdio_buffer **buf, unsigned int count)
{
 int pos;

 for (pos = 0; pos < count; pos++)
  memset(buf[pos], 0, sizeof(struct qdio_buffer));
}
