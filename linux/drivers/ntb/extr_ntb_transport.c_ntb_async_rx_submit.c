
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int rx_async; int last_cookie; struct dma_chan* rx_dma_chan; } ;
struct ntb_queue_entry {size_t len; void* buf; struct ntb_transport_qp* qp; } ;
struct dmaengine_unmap_data {size_t len; int to_cnt; int from_cnt; void** addr; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,void*,void*,size_t,int ) ;int dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {struct ntb_queue_entry* callback_param; int callback_result; } ;
typedef int dma_cookie_t ;


 int DMA_FROM_DEVICE ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int ENXIO ;
 int GFP_NOWAIT ;
 size_t PAGE_MASK ;
 void* dma_map_page (int ,int ,size_t,size_t,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_set_unmap (struct dma_async_tx_descriptor*,struct dmaengine_unmap_data*) ;
 scalar_t__ dma_submit_error (int ) ;
 struct dmaengine_unmap_data* dmaengine_get_unmap_data (int ,int,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_unmap_put (struct dmaengine_unmap_data*) ;
 int is_dma_copy_aligned (struct dma_device*,size_t,size_t,size_t) ;
 int ntb_rx_copy_callback ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,void*,void*,size_t,int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int ntb_async_rx_submit(struct ntb_queue_entry *entry, void *offset)
{
 struct dma_async_tx_descriptor *txd;
 struct ntb_transport_qp *qp = entry->qp;
 struct dma_chan *chan = qp->rx_dma_chan;
 struct dma_device *device;
 size_t pay_off, buff_off, len;
 struct dmaengine_unmap_data *unmap;
 dma_cookie_t cookie;
 void *buf = entry->buf;

 len = entry->len;
 device = chan->device;
 pay_off = (size_t)offset & ~PAGE_MASK;
 buff_off = (size_t)buf & ~PAGE_MASK;

 if (!is_dma_copy_aligned(device, pay_off, buff_off, len))
  goto err;

 unmap = dmaengine_get_unmap_data(device->dev, 2, GFP_NOWAIT);
 if (!unmap)
  goto err;

 unmap->len = len;
 unmap->addr[0] = dma_map_page(device->dev, virt_to_page(offset),
          pay_off, len, DMA_TO_DEVICE);
 if (dma_mapping_error(device->dev, unmap->addr[0]))
  goto err_get_unmap;

 unmap->to_cnt = 1;

 unmap->addr[1] = dma_map_page(device->dev, virt_to_page(buf),
          buff_off, len, DMA_FROM_DEVICE);
 if (dma_mapping_error(device->dev, unmap->addr[1]))
  goto err_get_unmap;

 unmap->from_cnt = 1;

 txd = device->device_prep_dma_memcpy(chan, unmap->addr[1],
          unmap->addr[0], len,
          DMA_PREP_INTERRUPT);
 if (!txd)
  goto err_get_unmap;

 txd->callback_result = ntb_rx_copy_callback;
 txd->callback_param = entry;
 dma_set_unmap(txd, unmap);

 cookie = dmaengine_submit(txd);
 if (dma_submit_error(cookie))
  goto err_set_unmap;

 dmaengine_unmap_put(unmap);

 qp->last_cookie = cookie;

 qp->rx_async++;

 return 0;

err_set_unmap:
 dmaengine_unmap_put(unmap);
err_get_unmap:
 dmaengine_unmap_put(unmap);
err:
 return -ENXIO;
}
