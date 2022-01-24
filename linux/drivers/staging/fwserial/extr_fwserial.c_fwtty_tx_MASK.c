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
struct tty_struct {int /*<<< orphan*/  hw_stopped; int /*<<< orphan*/  stopped; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct fwtty_transaction {TYPE_2__ dma_pended; } ;
struct TYPE_3__ {int /*<<< orphan*/  sent; int /*<<< orphan*/  txns; int /*<<< orphan*/  fifo_errs; int /*<<< orphan*/  tx_stall; } ;
struct fwtty_port {int /*<<< orphan*/  wait_tx; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  drain; TYPE_1__ stats; int /*<<< orphan*/  peer; int /*<<< orphan*/  port; } ;
struct fwtty_peer {int /*<<< orphan*/  fifo_addr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EALREADY ; 
 int EIO ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  IN_TX ; 
 int /*<<< orphan*/  STOP_TX ; 
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int WAKEUP_CHARS ; 
 int WRITER_MINIMUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwtty_port*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fwtty_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fwtty_peer*,struct fwtty_transaction*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fwtty_port*) ; 
 int /*<<< orphan*/  fwtty_tx_complete ; 
 int /*<<< orphan*/  fwtty_txn_cache ; 
 struct fwtty_transaction* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct fwtty_transaction*) ; 
 struct fwtty_peer* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct tty_struct*) ; 
 struct tty_struct* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct fwtty_port *port, bool drain)
{
	struct fwtty_peer *peer;
	struct fwtty_transaction *txn;
	struct tty_struct *tty;
	int n, len;

	tty = FUNC19(&port->port);
	if (!tty)
		return -ENOENT;

	FUNC11();
	peer = FUNC10(port->peer);
	if (!peer) {
		n = -EIO;
		goto out;
	}

	if (FUNC16(IN_TX, &port->flags)) {
		n = -EALREADY;
		goto out;
	}

	/* try to write as many dma transactions out as possible */
	n = -EAGAIN;
	while (!tty->stopped && !tty->hw_stopped &&
	       !FUNC17(STOP_TX, &port->flags)) {
		txn = FUNC8(fwtty_txn_cache, GFP_ATOMIC);
		if (!txn) {
			n = -ENOMEM;
			break;
		}

		FUNC14(&port->lock);
		n = FUNC3(&port->tx_fifo, &txn->dma_pended);
		FUNC15(&port->lock);

		FUNC4(port, "out: %u rem: %d\n", txn->dma_pended.len, n);

		if (n < 0) {
			FUNC9(fwtty_txn_cache, txn);
			if (n == -EAGAIN) {
				++port->stats.tx_stall;
			} else if (n == -ENODATA) {
				FUNC6(port->stats.txns, 0);
			} else {
				++port->stats.fifo_errs;
				FUNC5(port, "fifo err: %d\n",
						      n);
			}
			break;
		}

		FUNC6(port->stats.txns, txn->dma_pended.len);

		FUNC7(peer, txn, TCODE_WRITE_BLOCK_REQUEST,
				     peer->fifo_addr, txn->dma_pended.data,
				     txn->dma_pended.len, fwtty_tx_complete,
				     port);
		++port->stats.sent;

		/*
		 * Stop tx if the 'last view' of the fifo is empty or if
		 * this is the writer and there's not enough data to bother
		 */
		if (n == 0 || (!drain && n < WRITER_MINIMUM))
			break;
	}

	if (n >= 0 || n == -EAGAIN || n == -ENOMEM || n == -ENODATA) {
		FUNC14(&port->lock);
		len = FUNC2(&port->tx_fifo);
		if (len) {
			unsigned long delay = (n == -ENOMEM) ? HZ : 1;

			FUNC13(&port->drain, delay);
		}
		len = FUNC1(&port->tx_fifo);
		FUNC15(&port->lock);

		/* wakeup the writer */
		if (drain && len < WAKEUP_CHARS)
			FUNC20(tty);
	}

	FUNC0(IN_TX, &port->flags);
	FUNC21(&port->wait_tx);

out:
	FUNC12();
	FUNC18(tty);
	return n;
}