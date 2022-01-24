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
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* master; } ;
struct davinci_spi {void* dma_tx; void* dma_rx; TYPE_3__ bitbang; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct davinci_spi *dspi)
{
	struct device *sdev = dspi->bitbang.master->dev.parent;

	dspi->dma_rx = FUNC3(sdev, "rx");
	if (FUNC0(dspi->dma_rx))
		return FUNC1(dspi->dma_rx);

	dspi->dma_tx = FUNC3(sdev, "tx");
	if (FUNC0(dspi->dma_tx)) {
		FUNC2(dspi->dma_rx);
		return FUNC1(dspi->dma_tx);
	}

	return 0;
}