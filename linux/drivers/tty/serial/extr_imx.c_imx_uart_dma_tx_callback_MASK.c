#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int tx; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_3__ rs485; int /*<<< orphan*/  dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct imx_port {int tx_bytes; TYPE_4__ port; scalar_t__ dma_is_txing; int /*<<< orphan*/  dma_tx_nents; struct scatterlist* tx_sgl; } ;
struct circ_buf {int tail; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int SER_RS485_ENABLED ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR1_TXDMAEN ; 
 int /*<<< orphan*/  UCR4 ; 
 int /*<<< orphan*/  UCR4_TCEN ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC11(void *data)
{
	struct imx_port *sport = data;
	struct scatterlist *sgl = &sport->tx_sgl[0];
	struct circ_buf *xmit = &sport->port.state->xmit;
	unsigned long flags;
	u32 ucr1;

	FUNC5(&sport->port.lock, flags);

	FUNC1(sport->port.dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);

	ucr1 = FUNC3(sport, UCR1);
	ucr1 &= ~UCR1_TXDMAEN;
	FUNC4(sport, ucr1, UCR1);

	/* update the stat */
	xmit->tail = (xmit->tail + sport->tx_bytes) & (UART_XMIT_SIZE - 1);
	sport->port.icount.tx += sport->tx_bytes;

	FUNC0(sport->port.dev, "we finish the TX DMA.\n");

	sport->dma_is_txing = 0;

	if (FUNC7(xmit) < WAKEUP_CHARS)
		FUNC10(&sport->port);

	if (!FUNC8(xmit) && !FUNC9(&sport->port))
		FUNC2(sport);
	else if (sport->port.rs485.flags & SER_RS485_ENABLED) {
		u32 ucr4 = FUNC3(sport, UCR4);
		ucr4 |= UCR4_TCEN;
		FUNC4(sport, ucr4, UCR4);
	}

	FUNC6(&sport->port.lock, flags);
}