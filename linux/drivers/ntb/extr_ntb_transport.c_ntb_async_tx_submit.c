
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int tx_max_frame; scalar_t__ tx_mw_dma_addr; struct dma_chan* tx_dma_chan; } ;
struct ntb_queue_entry {size_t len; int tx_index; void* buf; } ;
struct dmaengine_unmap_data {size_t len; int to_cnt; int * addr; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,scalar_t__,int ,size_t,int ) ;int dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {struct ntb_queue_entry* callback_param; int callback_result; } ;
typedef int dma_cookie_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int ENXIO ;
 int GFP_NOWAIT ;
 size_t PAGE_MASK ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_map_page (int ,int ,size_t,size_t,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_set_unmap (struct dma_async_tx_descriptor*,struct dmaengine_unmap_data*) ;
 scalar_t__ dma_submit_error (int ) ;
 struct dmaengine_unmap_data* dmaengine_get_unmap_data (int ,int,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_unmap_put (struct dmaengine_unmap_data*) ;
 int is_dma_copy_aligned (struct dma_device*,size_t,size_t,size_t) ;
 int ntb_tx_copy_callback ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,scalar_t__,int ,size_t,int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int ntb_async_tx_submit(struct ntb_transport_qp *qp,
          struct ntb_queue_entry *entry)
{
 struct dma_async_tx_descriptor *txd;
 struct dma_chan *chan = qp->tx_dma_chan;
 struct dma_device *device;
 size_t len = entry->len;
 void *buf = entry->buf;
 size_t dest_off, buff_off;
 struct dmaengine_unmap_data *unmap;
 dma_addr_t dest;
 dma_cookie_t cookie;

 device = chan->device;
 dest = qp->tx_mw_dma_addr + qp->tx_max_frame * entry->tx_index;
 buff_off = (size_t)buf & ~PAGE_MASK;
 dest_off = (size_t)dest & ~PAGE_MASK;

 if (!is_dma_copy_aligned(device, buff_off, dest_off, len))
  goto err;

 unmap = dmaengine_get_unmap_data(device->dev, 1, GFP_NOWAIT);
 if (!unmap)
  goto err;

 unmap->len = len;
 unmap->addr[0] = dma_map_page(device->dev, virt_to_page(buf),
          buff_off, len, DMA_TO_DEVICE);
 if (dma_mapping_error(device->dev, unmap->addr[0]))
  goto err_get_unmap;

 unmap->to_cnt = 1;

 txd = device->device_prep_dma_memcpy(chan, dest, unmap->addr[0], len,
          DMA_PREP_INTERRUPT);
 if (!txd)
  goto err_get_unmap;

 txd->callback_result = ntb_tx_copy_callback;
 txd->callback_param = entry;
 dma_set_unmap(txd, unmap);

 cookie = dmaengine_submit(txd);
 if (dma_submit_error(cookie))
  goto err_set_unmap;

 dmaengine_unmap_put(unmap);

 dma_async_issue_pending(chan);

 return 0;
err_set_unmap:
 dmaengine_unmap_put(unmap);
err_get_unmap:
 dmaengine_unmap_put(unmap);
err:
 return -ENXIO;
}
