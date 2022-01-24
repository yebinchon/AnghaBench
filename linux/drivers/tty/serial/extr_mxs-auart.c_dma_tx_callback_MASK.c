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
struct TYPE_4__ {TYPE_1__* state; } ;
struct mxs_auart_port {TYPE_2__ port; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_sgl; int /*<<< orphan*/  dev; } ;
struct circ_buf {int dummy; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  MXS_AUART_DMA_TX_SYNC ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(void *param)
{
	struct mxs_auart_port *s = param;
	struct circ_buf *xmit = &s->port.state->xmit;

	FUNC1(s->dev, &s->tx_sgl, 1, DMA_TO_DEVICE);

	/* clear the bit used to serialize the DMA tx. */
	FUNC0(MXS_AUART_DMA_TX_SYNC, &s->flags);
	FUNC3();

	/* wake up the possible processes. */
	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC5(&s->port);

	FUNC2(s);
}