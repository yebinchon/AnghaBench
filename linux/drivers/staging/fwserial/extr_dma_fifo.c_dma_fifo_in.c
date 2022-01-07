
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fifo {int avail; int in; int capacity; int done; int out; scalar_t__ data; scalar_t__ corrupt; } ;


 int ENOENT ;
 int ENXIO ;
 scalar_t__ FAIL (struct dma_fifo*,int,char*,int,int ,int ,int,int) ;
 scalar_t__ addr_check (int ,int,int) ;
 int df_trace (char*,int,int ,int ,int,int) ;
 int memcpy (scalar_t__,void const*,int) ;
 int min (int,int) ;

int dma_fifo_in(struct dma_fifo *fifo, const void *src, int n)
{
 int ofs, l;

 if (!fifo->data)
  return -ENOENT;
 if (fifo->corrupt)
  return -ENXIO;

 if (n > fifo->avail)
  n = fifo->avail;
 if (n <= 0)
  return 0;

 ofs = fifo->in % fifo->capacity;
 l = min(n, fifo->capacity - ofs);
 memcpy(fifo->data + ofs, src, l);
 memcpy(fifo->data, src + l, n - l);

 if (FAIL(fifo, addr_check(fifo->done, fifo->in, fifo->in + n) ||
   fifo->avail < n,
   "fifo corrupt: in:%u out:%u done:%u n:%d avail:%d",
   fifo->in, fifo->out, fifo->done, n, fifo->avail))
  return -ENXIO;

 fifo->in += n;
 fifo->avail -= n;

 df_trace("in:%u out:%u done:%u n:%d avail:%d", fifo->in, fifo->out,
   fifo->done, n, fifo->avail);

 return n;
}
