#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ktermios {int c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct tty_port {struct tty_struct* tty; } ;
struct TYPE_11__ {scalar_t__ membase; int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct TYPE_10__ {int length; } ;
struct circ_buf {int /*<<< orphan*/  buf; } ;
struct lpuart_port {int rx_dma_rng_buf_len; TYPE_4__ port; int /*<<< orphan*/  dma_rx_chan; TYPE_6__* dma_rx_desc; int /*<<< orphan*/  dma_rx_cookie; TYPE_2__ rx_sgl; struct circ_buf rx_ring; } ;
struct dma_slave_config {int src_maxburst; int /*<<< orphan*/  direction; int /*<<< orphan*/  src_addr_width; int /*<<< orphan*/  src_addr; } ;
struct TYPE_12__ {struct lpuart_port* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_9__ {struct tty_port port; } ;

/* Variables and functions */
 int CS7 ; 
 int CSIZE ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int DMA_RX_TIMEOUT ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PARENB ; 
 int /*<<< orphan*/  UARTBAUD ; 
 unsigned long UARTBAUD_RDMAE ; 
 scalar_t__ UARTCR5 ; 
 int UARTCR5_RDMAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lpuart_port*) ; 
 int /*<<< orphan*/  lpuart_dma_rx_complete ; 
 scalar_t__ FUNC11 (struct lpuart_port*) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC17(struct lpuart_port *sport)
{
	struct dma_slave_config dma_rx_sconfig = {};
	struct circ_buf *ring = &sport->rx_ring;
	int ret, nent;
	int bits, baud;
	struct tty_port *port = &sport->port.state->port;
	struct tty_struct *tty = port->tty;
	struct ktermios *termios = &tty->termios;

	baud = FUNC15(tty);

	bits = (termios->c_cflag & CSIZE) == CS7 ? 9 : 10;
	if (termios->c_cflag & PARENB)
		bits++;

	/*
	 * Calculate length of one DMA buffer size to keep latency below
	 * 10ms at any baud rate.
	 */
	sport->rx_dma_rng_buf_len = (DMA_RX_TIMEOUT * baud /  bits / 1000) * 2;
	sport->rx_dma_rng_buf_len = (1 << (FUNC6(sport->rx_dma_rng_buf_len) - 1));
	if (sport->rx_dma_rng_buf_len < 16)
		sport->rx_dma_rng_buf_len = 16;

	ring->buf = FUNC7(sport->rx_dma_rng_buf_len, GFP_ATOMIC);
	if (!ring->buf)
		return -ENOMEM;

	FUNC14(&sport->rx_sgl, ring->buf, sport->rx_dma_rng_buf_len);
	nent = FUNC2(sport->port.dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);

	if (!nent) {
		FUNC0(sport->port.dev, "DMA Rx mapping error\n");
		return -EINVAL;
	}

	dma_rx_sconfig.src_addr = FUNC10(sport);
	dma_rx_sconfig.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	dma_rx_sconfig.src_maxburst = 1;
	dma_rx_sconfig.direction = DMA_DEV_TO_MEM;
	ret = FUNC4(sport->dma_rx_chan, &dma_rx_sconfig);

	if (ret < 0) {
		FUNC0(sport->port.dev,
				"DMA Rx slave config failed, err = %d\n", ret);
		return ret;
	}

	sport->dma_rx_desc = FUNC3(sport->dma_rx_chan,
				 FUNC13(&sport->rx_sgl),
				 sport->rx_sgl.length,
				 sport->rx_sgl.length / 2,
				 DMA_DEV_TO_MEM,
				 DMA_PREP_INTERRUPT);
	if (!sport->dma_rx_desc) {
		FUNC0(sport->port.dev, "Cannot prepare cyclic DMA\n");
		return -EFAULT;
	}

	sport->dma_rx_desc->callback = lpuart_dma_rx_complete;
	sport->dma_rx_desc->callback_param = sport;
	sport->dma_rx_cookie = FUNC5(sport->dma_rx_desc);
	FUNC1(sport->dma_rx_chan);

	if (FUNC11(sport)) {
		unsigned long temp = FUNC8(&sport->port, UARTBAUD);

		FUNC9(&sport->port, temp | UARTBAUD_RDMAE, UARTBAUD);
	} else {
		FUNC16(FUNC12(sport->port.membase + UARTCR5) | UARTCR5_RDMAS,
		       sport->port.membase + UARTCR5);
	}

	return 0;
}