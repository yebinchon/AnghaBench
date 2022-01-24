#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ntb_transport_qp {int rx_alloc_entry; int tx_max_entry; TYPE_2__* rx_dma_chan; TYPE_2__* tx_dma_chan; int /*<<< orphan*/  tx_mw_size; scalar_t__ tx_mw_dma_addr; int /*<<< orphan*/  rx_free_q; int /*<<< orphan*/  ntb_rx_q_lock; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  ndev; int /*<<< orphan*/  tx_mw_phys; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  tx_handler; int /*<<< orphan*/  rx_handler; void* cb_data; } ;
struct ntb_transport_ctx {int /*<<< orphan*/  qp_bitmap_free; struct ntb_transport_qp* qp_vec; } ;
struct ntb_queue_handlers {int /*<<< orphan*/  event_handler; int /*<<< orphan*/  tx_handler; int /*<<< orphan*/  rx_handler; } ;
struct ntb_queue_entry {int /*<<< orphan*/  entry; struct ntb_transport_qp* qp; } ;
struct ntb_dev {int /*<<< orphan*/  dev; struct ntb_transport_ctx* ctx; struct pci_dev* pdev; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NTB_QP_DEF_NUM_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct ntb_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ntb_queue_entry*) ; 
 struct ntb_queue_entry* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntb_dma_filter_fn ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ntb_queue_entry* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ use_dma ; 

struct ntb_transport_qp *
FUNC19(void *data, struct device *client_dev,
			   const struct ntb_queue_handlers *handlers)
{
	struct ntb_dev *ndev;
	struct pci_dev *pdev;
	struct ntb_transport_ctx *nt;
	struct ntb_queue_entry *entry;
	struct ntb_transport_qp *qp;
	u64 qp_bit;
	unsigned int free_queue;
	dma_cap_mask_t dma_mask;
	int node;
	int i;

	ndev = FUNC3(client_dev->parent);
	pdev = ndev->pdev;
	nt = ndev->ctx;

	node = FUNC4(&ndev->dev);

	free_queue = FUNC12(nt->qp_bitmap_free);
	if (!free_queue)
		goto err;

	/* decrement free_queue to make it zero based */
	free_queue--;

	qp = &nt->qp_vec[free_queue];
	qp_bit = FUNC0(qp->qp_num);

	nt->qp_bitmap_free &= ~qp_bit;

	qp->cb_data = data;
	qp->rx_handler = handlers->rx_handler;
	qp->tx_handler = handlers->tx_handler;
	qp->event_handler = handlers->event_handler;

	FUNC6(dma_mask);
	FUNC5(DMA_MEMCPY, dma_mask);

	if (use_dma) {
		qp->tx_dma_chan =
			FUNC10(dma_mask, ntb_dma_filter_fn,
					    (void *)(unsigned long)node);
		if (!qp->tx_dma_chan)
			FUNC2(&pdev->dev, "Unable to allocate TX DMA channel\n");

		qp->rx_dma_chan =
			FUNC10(dma_mask, ntb_dma_filter_fn,
					    (void *)(unsigned long)node);
		if (!qp->rx_dma_chan)
			FUNC2(&pdev->dev, "Unable to allocate RX DMA channel\n");
	} else {
		qp->tx_dma_chan = NULL;
		qp->rx_dma_chan = NULL;
	}

	qp->tx_mw_dma_addr = 0;
	if (qp->tx_dma_chan) {
		qp->tx_mw_dma_addr =
			FUNC7(qp->tx_dma_chan->device->dev,
					 qp->tx_mw_phys, qp->tx_mw_size,
					 DMA_FROM_DEVICE, 0);
		if (FUNC8(qp->tx_dma_chan->device->dev,
				      qp->tx_mw_dma_addr)) {
			qp->tx_mw_dma_addr = 0;
			goto err1;
		}
	}

	FUNC1(&pdev->dev, "Using %s memcpy for TX\n",
		qp->tx_dma_chan ? "DMA" : "CPU");

	FUNC1(&pdev->dev, "Using %s memcpy for RX\n",
		qp->rx_dma_chan ? "DMA" : "CPU");

	for (i = 0; i < NTB_QP_DEF_NUM_ENTRIES; i++) {
		entry = FUNC14(sizeof(*entry), GFP_KERNEL, node);
		if (!entry)
			goto err1;

		entry->qp = qp;
		FUNC17(&qp->ntb_rx_q_lock, &entry->entry,
			     &qp->rx_free_q);
	}
	qp->rx_alloc_entry = NTB_QP_DEF_NUM_ENTRIES;

	for (i = 0; i < qp->tx_max_entry; i++) {
		entry = FUNC14(sizeof(*entry), GFP_KERNEL, node);
		if (!entry)
			goto err2;

		entry->qp = qp;
		FUNC17(&qp->ntb_tx_free_q_lock, &entry->entry,
			     &qp->tx_free_q);
	}

	FUNC15(qp->ndev, qp_bit);
	FUNC16(qp->ndev, qp_bit);

	FUNC2(&pdev->dev, "NTB Transport QP %d created\n", qp->qp_num);

	return qp;

err2:
	while ((entry = FUNC18(&qp->ntb_tx_free_q_lock, &qp->tx_free_q)))
		FUNC13(entry);
err1:
	qp->rx_alloc_entry = 0;
	while ((entry = FUNC18(&qp->ntb_rx_q_lock, &qp->rx_free_q)))
		FUNC13(entry);
	if (qp->tx_mw_dma_addr)
		FUNC11(qp->tx_dma_chan->device->dev,
				   qp->tx_mw_dma_addr, qp->tx_mw_size,
				   DMA_FROM_DEVICE, 0);
	if (qp->tx_dma_chan)
		FUNC9(qp->tx_dma_chan);
	if (qp->rx_dma_chan)
		FUNC9(qp->rx_dma_chan);
	nt->qp_bitmap_free |= qp_bit;
err:
	return NULL;
}