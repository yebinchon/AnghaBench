#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ membase; } ;
struct lpuart_port {int lpuart_dma_tx_use; TYPE_1__ port; int /*<<< orphan*/  dma_wait; scalar_t__ dma_tx_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTBAUD ; 
 int UARTBAUD_TDMAE ; 
 scalar_t__ UARTCR5 ; 
 int UARTCR5_TDMAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct lpuart_port*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct lpuart_port *sport)
{
	u32 uartbaud;

	if (sport->dma_tx_chan && !FUNC3(&sport->port)) {
		FUNC0(&sport->dma_wait);
		sport->lpuart_dma_tx_use = true;
		if (FUNC4(sport)) {
			uartbaud = FUNC1(&sport->port, UARTBAUD);
			FUNC2(&sport->port,
				       uartbaud | UARTBAUD_TDMAE, UARTBAUD);
		} else {
			FUNC6(FUNC5(sport->port.membase + UARTCR5) |
				UARTCR5_TDMAS, sport->port.membase + UARTCR5);
		}
	} else {
		sport->lpuart_dma_tx_use = false;
	}
}