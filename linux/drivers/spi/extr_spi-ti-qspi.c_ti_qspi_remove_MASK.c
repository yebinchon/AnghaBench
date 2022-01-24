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
struct ti_qspi {scalar_t__ rx_chan; int /*<<< orphan*/  rx_bb_dma_addr; scalar_t__ rx_bb_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QSPI_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ti_qspi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct ti_qspi *qspi = FUNC2(pdev);
	int rc;

	rc = FUNC5(qspi->master);
	if (rc)
		return rc;

	FUNC4(&pdev->dev);
	FUNC3(&pdev->dev);

	if (qspi->rx_bb_addr)
		FUNC0(qspi->dev, QSPI_DMA_BUFFER_SIZE,
				  qspi->rx_bb_addr,
				  qspi->rx_bb_dma_addr);
	if (qspi->rx_chan)
		FUNC1(qspi->rx_chan);

	return 0;
}