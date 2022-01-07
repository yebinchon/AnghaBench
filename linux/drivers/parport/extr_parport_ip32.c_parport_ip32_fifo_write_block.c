
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int modes; } ;


 int PARPORT_MODE_DMA ;
 size_t parport_ip32_fifo_write_block_dma (struct parport*,void const*,size_t) ;
 size_t parport_ip32_fifo_write_block_pio (struct parport*,void const*,size_t) ;

__attribute__((used)) static size_t parport_ip32_fifo_write_block(struct parport *p,
         const void *buf, size_t len)
{
 size_t written = 0;
 if (len)


  written = (p->modes & PARPORT_MODE_DMA) ?
   parport_ip32_fifo_write_block_dma(p, buf, len) :
   parport_ip32_fifo_write_block_pio(p, buf, len);
 return written;
}
