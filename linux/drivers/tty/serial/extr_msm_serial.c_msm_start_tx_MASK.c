#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int dummy; } ;
struct msm_dma {scalar_t__ count; } ;
struct msm_port {int /*<<< orphan*/  imr; struct msm_dma tx_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IMR ; 
 int /*<<< orphan*/  UART_IMR_TXLEV ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct msm_port *msm_port = FUNC0(port);
	struct msm_dma *dma = &msm_port->tx_dma;

	/* Already started in DMA mode */
	if (dma->count)
		return;

	msm_port->imr |= UART_IMR_TXLEV;
	FUNC1(port, msm_port->imr, UART_IMR);
}