#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ntb_transport_qp {int active; int /*<<< orphan*/  qp_num; TYPE_2__* transport; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  rx_post_q; int /*<<< orphan*/  ntb_rx_q_lock; int /*<<< orphan*/  rx_pend_q; int /*<<< orphan*/  rx_free_q; int /*<<< orphan*/ * event_handler; int /*<<< orphan*/ * tx_handler; int /*<<< orphan*/ * rx_handler; int /*<<< orphan*/ * cb_data; int /*<<< orphan*/  link_work; int /*<<< orphan*/  rxc_db_work; TYPE_3__* ndev; int /*<<< orphan*/  last_cookie; struct dma_chan* rx_dma_chan; int /*<<< orphan*/  tx_mw_size; int /*<<< orphan*/  tx_mw_dma_addr; struct dma_chan* tx_dma_chan; } ;
struct ntb_queue_entry {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  qp_bitmap_free; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct ntb_queue_entry* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct ntb_transport_qp *qp)
{
	struct pci_dev *pdev;
	struct ntb_queue_entry *entry;
	u64 qp_bit;

	if (!qp)
		return;

	pdev = qp->ndev->pdev;

	qp->active = false;

	if (qp->tx_dma_chan) {
		struct dma_chan *chan = qp->tx_dma_chan;
		/* Putting the dma_chan to NULL will force any new traffic to be
		 * processed by the CPU instead of the DAM engine
		 */
		qp->tx_dma_chan = NULL;

		/* Try to be nice and wait for any queued DMA engine
		 * transactions to process before smashing it with a rock
		 */
		FUNC5(chan, qp->last_cookie);
		FUNC7(chan);

		FUNC6(chan->device->dev,
				   qp->tx_mw_dma_addr, qp->tx_mw_size,
				   DMA_FROM_DEVICE, 0);

		FUNC4(chan);
	}

	if (qp->rx_dma_chan) {
		struct dma_chan *chan = qp->rx_dma_chan;
		/* Putting the dma_chan to NULL will force any new traffic to be
		 * processed by the CPU instead of the DAM engine
		 */
		qp->rx_dma_chan = NULL;

		/* Try to be nice and wait for any queued DMA engine
		 * transactions to process before smashing it with a rock
		 */
		FUNC5(chan, qp->last_cookie);
		FUNC7(chan);
		FUNC4(chan);
	}

	qp_bit = FUNC0(qp->qp_num);

	FUNC9(qp->ndev, qp_bit);
	FUNC11(&qp->rxc_db_work);

	FUNC1(&qp->link_work);

	qp->cb_data = NULL;
	qp->rx_handler = NULL;
	qp->tx_handler = NULL;
	qp->event_handler = NULL;

	while ((entry = FUNC10(&qp->ntb_rx_q_lock, &qp->rx_free_q)))
		FUNC8(entry);

	while ((entry = FUNC10(&qp->ntb_rx_q_lock, &qp->rx_pend_q))) {
		FUNC3(&pdev->dev, "Freeing item from non-empty rx_pend_q\n");
		FUNC8(entry);
	}

	while ((entry = FUNC10(&qp->ntb_rx_q_lock, &qp->rx_post_q))) {
		FUNC3(&pdev->dev, "Freeing item from non-empty rx_post_q\n");
		FUNC8(entry);
	}

	while ((entry = FUNC10(&qp->ntb_tx_free_q_lock, &qp->tx_free_q)))
		FUNC8(entry);

	qp->transport->qp_bitmap_free |= qp_bit;

	FUNC2(&pdev->dev, "NTB Transport QP %d freed\n", qp->qp_num);
}