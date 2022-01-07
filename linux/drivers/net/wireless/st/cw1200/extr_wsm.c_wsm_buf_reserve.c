
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wsm_buf {int * begin; int * end; int * data; } ;


 int ENOMEM ;
 int FWLOAD_BLOCK_SIZE ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int * krealloc (int *,size_t,int) ;
 size_t round_up (size_t,int ) ;
 int wsm_buf_deinit (struct wsm_buf*) ;

__attribute__((used)) static int wsm_buf_reserve(struct wsm_buf *buf, size_t extra_size)
{
 size_t pos = buf->data - buf->begin;
 size_t size = pos + extra_size;
 u8 *tmp;

 size = round_up(size, FWLOAD_BLOCK_SIZE);

 tmp = krealloc(buf->begin, size, GFP_KERNEL | GFP_DMA);
 if (!tmp) {
  wsm_buf_deinit(buf);
  return -ENOMEM;
 }

 buf->begin = tmp;
 buf->data = &buf->begin[pos];
 buf->end = &buf->begin[size];
 return 0;
}
