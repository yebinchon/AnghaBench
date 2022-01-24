#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct lpuart_port {scalar_t__ dma_rx_chan; scalar_t__ dma_tx_chan; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  fsl_lpuart_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpuart_port*) ; 
 int /*<<< orphan*/  lpuart_reg ; 
 struct lpuart_port* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct lpuart_port *sport = FUNC3(pdev);

	FUNC4(&lpuart_reg, &sport->port);

	FUNC1(&fsl_lpuart_ida, sport->port.line);

	FUNC2(sport);

	if (sport->dma_tx_chan)
		FUNC0(sport->dma_tx_chan);

	if (sport->dma_rx_chan)
		FUNC0(sport->dma_rx_chan);

	return 0;
}