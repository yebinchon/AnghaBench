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
typedef  int u32 ;
struct efm32_spi_ddata {scalar_t__ rx_len; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  REG_IEN ; 
 int REG_IF_RXDATAV ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int REG_STATUS_RXDATAV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct efm32_spi_ddata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_spi_ddata*) ; 
 int /*<<< orphan*/  FUNC3 (struct efm32_spi_ddata*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct efm32_spi_ddata *ddata = data;
	irqreturn_t ret = IRQ_NONE;

	FUNC4(&ddata->lock);

	while (ddata->rx_len > 0 &&
			FUNC1(ddata, REG_STATUS) &
			REG_STATUS_RXDATAV) {
		FUNC2(ddata);

		ret = IRQ_HANDLED;
	}

	if (!ddata->rx_len) {
		u32 ien = FUNC1(ddata, REG_IEN);

		ien &= ~REG_IF_RXDATAV;

		FUNC3(ddata, ien, REG_IEN);

		FUNC0(&ddata->done);
	}

	FUNC5(&ddata->lock);

	return ret;
}