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
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
struct fwtty_transaction {TYPE_3__ dma_pended; struct fwtty_port* port; } ;
struct TYPE_5__ {int /*<<< orphan*/  dropped; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct fwtty_port {int /*<<< orphan*/  port; TYPE_2__ stats; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_fifo; TYPE_1__ icount; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
#define  RCODE_COMPLETE 128 
 int WAKEUP_CHARS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_card *card, int rcode,
			      void *data, size_t length,
			      struct fwtty_transaction *txn)
{
	struct fwtty_port *port = txn->port;
	int len;

	FUNC2(port, "rcode: %d\n", rcode);

	switch (rcode) {
	case RCODE_COMPLETE:
		FUNC3(&port->lock);
		FUNC1(&port->tx_fifo, &txn->dma_pended);
		len = FUNC0(&port->tx_fifo);
		FUNC4(&port->lock);

		port->icount.tx += txn->dma_pended.len;
		break;

	default:
		/* TODO: implement retries */
		FUNC3(&port->lock);
		FUNC1(&port->tx_fifo, &txn->dma_pended);
		len = FUNC0(&port->tx_fifo);
		FUNC4(&port->lock);

		port->stats.dropped += txn->dma_pended.len;
	}

	if (len < WAKEUP_CHARS)
		FUNC5(&port->port);
}