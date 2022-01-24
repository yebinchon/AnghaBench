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
struct tty_port {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {unsigned int rx; int /*<<< orphan*/  buf_overrun; } ;
struct TYPE_6__ {int ignore_status_mask; int /*<<< orphan*/  dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int head; int tail; } ;
struct imx_port {unsigned int rx_periods; TYPE_3__ port; scalar_t__ rx_buf; int /*<<< orphan*/  rx_cookie; struct circ_buf rx_ring; struct scatterlist rx_sgl; struct dma_chan* dma_chan_rx; } ;
struct dma_tx_state {int residue; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 int DMA_ERROR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int URXD_DUMMY_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_port*) ; 
 unsigned int FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*) ; 
 unsigned int FUNC8 (struct tty_port*,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC9(void *data)
{
	struct imx_port *sport = data;
	struct dma_chan	*chan = sport->dma_chan_rx;
	struct scatterlist *sgl = &sport->rx_sgl;
	struct tty_port *port = &sport->port.state->port;
	struct dma_tx_state state;
	struct circ_buf *rx_ring = &sport->rx_ring;
	enum dma_status status;
	unsigned int w_bytes = 0;
	unsigned int r_bytes;
	unsigned int bd_size;

	status = FUNC4(chan, sport->rx_cookie, &state);

	if (status == DMA_ERROR) {
		FUNC5(sport);
		return;
	}

	if (!(sport->port.ignore_status_mask & URXD_DUMMY_READ)) {

		/*
		 * The state-residue variable represents the empty space
		 * relative to the entire buffer. Taking this in consideration
		 * the head is always calculated base on the buffer total
		 * length - DMA transaction residue. The UART script from the
		 * SDMA firmware will jump to the next buffer descriptor,
		 * once a DMA transaction if finalized (IMX53 RM - A.4.1.2.4).
		 * Taking this in consideration the tail is always at the
		 * beginning of the buffer descriptor that contains the head.
		 */

		/* Calculate the head */
		rx_ring->head = FUNC6(sgl) - state.residue;

		/* Calculate the tail. */
		bd_size = FUNC6(sgl) / sport->rx_periods;
		rx_ring->tail = ((rx_ring->head-1) / bd_size) * bd_size;

		if (rx_ring->head <= FUNC6(sgl) &&
		    rx_ring->head > rx_ring->tail) {

			/* Move data from tail to head */
			r_bytes = rx_ring->head - rx_ring->tail;

			/* CPU claims ownership of RX DMA buffer */
			FUNC2(sport->port.dev, sgl, 1,
				DMA_FROM_DEVICE);

			w_bytes = FUNC8(port,
				sport->rx_buf + rx_ring->tail, r_bytes);

			/* UART retrieves ownership of RX DMA buffer */
			FUNC3(sport->port.dev, sgl, 1,
				DMA_FROM_DEVICE);

			if (w_bytes != r_bytes)
				sport->port.icount.buf_overrun++;

			sport->port.icount.rx += w_bytes;
		} else	{
			FUNC0(rx_ring->head > FUNC6(sgl));
			FUNC0(rx_ring->head <= rx_ring->tail);
		}
	}

	if (w_bytes) {
		FUNC7(port);
		FUNC1(sport->port.dev, "We get %d bytes.\n", w_bytes);
	}
}