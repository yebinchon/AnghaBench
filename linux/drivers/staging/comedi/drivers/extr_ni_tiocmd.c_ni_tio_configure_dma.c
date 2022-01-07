
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;
struct ni_gpct {unsigned int counter_index; struct ni_gpct_device* counter_dev; } ;


 unsigned int GI_DMA_ENABLE ;
 unsigned int GI_DMA_INT_ENA ;
 unsigned int GI_DMA_WRITE ;
 unsigned int GI_READ_ACKS_IRQ ;
 unsigned int GI_WRITE_ACKS_IRQ ;
 int NITIO_DMA_CFG_REG (unsigned int) ;
 int NITIO_INPUT_SEL_REG (unsigned int) ;



 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void ni_tio_configure_dma(struct ni_gpct *counter,
     bool enable, bool read)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int cidx = counter->counter_index;
 unsigned int mask;
 unsigned int bits;

 mask = GI_READ_ACKS_IRQ | GI_WRITE_ACKS_IRQ;
 bits = 0;

 if (enable) {
  if (read)
   bits |= GI_READ_ACKS_IRQ;
  else
   bits |= GI_WRITE_ACKS_IRQ;
 }
 ni_tio_set_bits(counter, NITIO_INPUT_SEL_REG(cidx), mask, bits);

 switch (counter_dev->variant) {
 case 129:
  break;
 case 128:
 case 130:
  mask = GI_DMA_ENABLE | GI_DMA_INT_ENA | GI_DMA_WRITE;
  bits = 0;

  if (enable)
   bits |= GI_DMA_ENABLE | GI_DMA_INT_ENA;
  if (!read)
   bits |= GI_DMA_WRITE;
  ni_tio_set_bits(counter, NITIO_DMA_CFG_REG(cidx), mask, bits);
  break;
 }
}
