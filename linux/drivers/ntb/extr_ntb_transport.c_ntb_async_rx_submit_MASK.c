#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ntb_transport_qp {int /*<<< orphan*/  rx_async; int /*<<< orphan*/  last_cookie; struct dma_chan* rx_dma_chan; } ;
struct ntb_queue_entry {size_t len; void* buf; struct ntb_transport_qp* qp; } ;
struct dmaengine_unmap_data {size_t len; int to_cnt; int from_cnt; void** addr; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,void*,void*,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {struct ntb_queue_entry* callback_param; int /*<<< orphan*/  callback_result; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 size_t PAGE_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_async_tx_descriptor*,struct dmaengine_unmap_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct dmaengine_unmap_data* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmaengine_unmap_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_device*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  ntb_rx_copy_callback ; 
 struct dma_async_tx_descriptor* FUNC8 (struct dma_chan*,void*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(struct ntb_queue_entry *entry, void *offset)
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

	if (!FUNC7(device, pay_off, buff_off, len))
		goto err;

	unmap = FUNC4(device->dev, 2, GFP_NOWAIT);
	if (!unmap)
		goto err;

	unmap->len = len;
	unmap->addr[0] = FUNC0(device->dev, FUNC9(offset),
				      pay_off, len, DMA_TO_DEVICE);
	if (FUNC1(device->dev, unmap->addr[0]))
		goto err_get_unmap;

	unmap->to_cnt = 1;

	unmap->addr[1] = FUNC0(device->dev, FUNC9(buf),
				      buff_off, len, DMA_FROM_DEVICE);
	if (FUNC1(device->dev, unmap->addr[1]))
		goto err_get_unmap;

	unmap->from_cnt = 1;

	txd = device->device_prep_dma_memcpy(chan, unmap->addr[1],
					     unmap->addr[0], len,
					     DMA_PREP_INTERRUPT);
	if (!txd)
		goto err_get_unmap;

	txd->callback_result = ntb_rx_copy_callback;
	txd->callback_param = entry;
	FUNC2(txd, unmap);

	cookie = FUNC5(txd);
	if (FUNC3(cookie))
		goto err_set_unmap;

	FUNC6(unmap);

	qp->last_cookie = cookie;

	qp->rx_async++;

	return 0;

err_set_unmap:
	FUNC6(unmap);
err_get_unmap:
	FUNC6(unmap);
err:
	return -ENXIO;
}