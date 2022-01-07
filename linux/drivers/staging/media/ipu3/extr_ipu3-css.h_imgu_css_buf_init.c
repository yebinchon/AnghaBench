
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_css_buffer {unsigned int queue; int daddr; int state; } ;
typedef int dma_addr_t ;


 int IPU3_CSS_BUFFER_NEW ;

__attribute__((used)) static inline void imgu_css_buf_init(struct imgu_css_buffer *b,
         unsigned int queue, dma_addr_t daddr)
{
 b->state = IPU3_CSS_BUFFER_NEW;
 b->queue = queue;
 b->daddr = daddr;
}
