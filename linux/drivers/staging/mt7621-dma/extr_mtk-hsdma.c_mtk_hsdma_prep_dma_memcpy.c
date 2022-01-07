
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_hsdma_desc {int vdesc; TYPE_2__* sg; } ;
struct mtk_hsdma_chan {int vchan; } ;
struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_4__ {size_t len; void* dst_addr; void* src_addr; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int dev_err (int ,char*) ;
 struct mtk_hsdma_desc* kzalloc (int,int ) ;
 struct mtk_hsdma_chan* to_mtk_hsdma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *mtk_hsdma_prep_dma_memcpy(
  struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
  size_t len, unsigned long flags)
{
 struct mtk_hsdma_chan *chan = to_mtk_hsdma_chan(c);
 struct mtk_hsdma_desc *desc;

 if (len <= 0)
  return ((void*)0);

 desc = kzalloc(sizeof(*desc), GFP_ATOMIC);
 if (!desc) {
  dev_err(c->device->dev, "alloc memcpy decs error\n");
  return ((void*)0);
 }

 desc->sg[0].src_addr = src;
 desc->sg[0].dst_addr = dest;
 desc->sg[0].len = len;

 return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
}
