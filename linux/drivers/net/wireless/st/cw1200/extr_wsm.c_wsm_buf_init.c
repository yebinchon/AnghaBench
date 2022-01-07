
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int * begin; int * end; } ;


 int BUG_ON (int *) ;
 size_t FWLOAD_BLOCK_SIZE ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int * kmalloc (size_t,int) ;
 int wsm_buf_reset (struct wsm_buf*) ;

void wsm_buf_init(struct wsm_buf *buf)
{
 BUG_ON(buf->begin);
 buf->begin = kmalloc(FWLOAD_BLOCK_SIZE, GFP_KERNEL | GFP_DMA);
 buf->end = buf->begin ? &buf->begin[FWLOAD_BLOCK_SIZE] : buf->begin;
 wsm_buf_reset(buf);
}
