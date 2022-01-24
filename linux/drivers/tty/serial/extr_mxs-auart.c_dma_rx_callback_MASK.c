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
typedef  int u32 ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct mxs_auart_port {int /*<<< orphan*/  rx_dma_buf; int /*<<< orphan*/  rx_sgl; int /*<<< orphan*/  dev; TYPE_2__ port; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int AUART_STAT_BERR ; 
 int AUART_STAT_FERR ; 
 int AUART_STAT_OERR ; 
 int AUART_STAT_PERR ; 
 int AUART_STAT_RXCOUNT_MASK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  REG_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mxs_auart_port*) ; 
 int FUNC2 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
	struct mxs_auart_port *s = (struct mxs_auart_port *) arg;
	struct tty_port *port = &s->port.state->port;
	int count;
	u32 stat;

	FUNC0(s->dev, &s->rx_sgl, 1, DMA_FROM_DEVICE);

	stat = FUNC2(s, REG_STAT);
	stat &= ~(AUART_STAT_OERR | AUART_STAT_BERR |
			AUART_STAT_PERR | AUART_STAT_FERR);

	count = stat & AUART_STAT_RXCOUNT_MASK;
	FUNC5(port, s->rx_dma_buf, count);

	FUNC3(stat, s, REG_STAT);
	FUNC4(port);

	/* start the next DMA for RX. */
	FUNC1(s);
}