
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bsg_buffer {int sg_cnt; size_t payload_len; int sg_list; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int dma_map_sg (struct device*,int ,int,int ) ;
 int sg_dma_address (int ) ;
 size_t sg_dma_len (int ) ;

__attribute__((used)) static int
_transport_map_smp_buffer(struct device *dev, struct bsg_buffer *buf,
  dma_addr_t *dma_addr, size_t *dma_len, void **p)
{

 if (buf->sg_cnt > 1) {
  *p = dma_alloc_coherent(dev, buf->payload_len, dma_addr,
    GFP_KERNEL);
  if (!*p)
   return -ENOMEM;
  *dma_len = buf->payload_len;
 } else {
  if (!dma_map_sg(dev, buf->sg_list, 1, DMA_BIDIRECTIONAL))
   return -ENOMEM;
  *dma_addr = sg_dma_address(buf->sg_list);
  *dma_len = sg_dma_len(buf->sg_list);
  *p = ((void*)0);
 }

 return 0;
}
