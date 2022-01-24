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
struct ntb_transport_qp {int tx_max_frame; scalar_t__ tx_mw_dma_addr; struct dma_chan* tx_dma_chan; } ;
struct ntb_queue_entry {size_t len; int tx_index; void* buf; } ;
struct dmaengine_unmap_data {size_t len; int to_cnt; int /*<<< orphan*/ * addr; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,scalar_t__,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {struct ntb_queue_entry* callback_param; int /*<<< orphan*/  callback_result; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 size_t PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*,struct dmaengine_unmap_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct dmaengine_unmap_data* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmaengine_unmap_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_device*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  ntb_tx_copy_callback ; 
 struct dma_async_tx_descriptor* FUNC9 (struct dma_chan*,scalar_t__,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(struct ntb_transport_qp *qp,
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

	if (!FUNC8(device, buff_off, dest_off, len))
		goto err;

	unmap = FUNC5(device->dev, 1, GFP_NOWAIT);
	if (!unmap)
		goto err;

	unmap->len = len;
	unmap->addr[0] = FUNC1(device->dev, FUNC10(buf),
				      buff_off, len, DMA_TO_DEVICE);
	if (FUNC2(device->dev, unmap->addr[0]))
		goto err_get_unmap;

	unmap->to_cnt = 1;

	txd = device->device_prep_dma_memcpy(chan, dest, unmap->addr[0], len,
					     DMA_PREP_INTERRUPT);
	if (!txd)
		goto err_get_unmap;

	txd->callback_result = ntb_tx_copy_callback;
	txd->callback_param = entry;
	FUNC3(txd, unmap);

	cookie = FUNC6(txd);
	if (FUNC4(cookie))
		goto err_set_unmap;

	FUNC7(unmap);

	FUNC0(chan);

	return 0;
err_set_unmap:
	FUNC7(unmap);
err_get_unmap:
	FUNC7(unmap);
err:
	return -ENXIO;
}