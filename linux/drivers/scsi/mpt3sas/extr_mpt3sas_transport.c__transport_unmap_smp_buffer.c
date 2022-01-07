
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bsg_buffer {int sg_list; int payload_len; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int dma_free_coherent (struct device*,int ,void*,int ) ;
 int dma_unmap_sg (struct device*,int ,int,int ) ;

__attribute__((used)) static void
_transport_unmap_smp_buffer(struct device *dev, struct bsg_buffer *buf,
  dma_addr_t dma_addr, void *p)
{
 if (p)
  dma_free_coherent(dev, buf->payload_len, p, dma_addr);
 else
  dma_unmap_sg(dev, buf->sg_list, 1, DMA_BIDIRECTIONAL);
}
