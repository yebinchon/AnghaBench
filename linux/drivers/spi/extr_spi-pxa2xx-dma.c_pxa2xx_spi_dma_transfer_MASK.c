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
struct driver_data {int mask_sr; TYPE_2__* controller; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  dma_tx; int /*<<< orphan*/  dma_rx; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_ROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*,int) ; 
 int FUNC3 (struct driver_data*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC4(struct driver_data *drv_data)
{
	u32 status;

	status = FUNC3(drv_data, SSSR) & drv_data->mask_sr;
	if (status & SSSR_ROR) {
		FUNC0(&drv_data->pdev->dev, "FIFO overrun\n");

		FUNC1(drv_data->controller->dma_rx);
		FUNC1(drv_data->controller->dma_tx);

		FUNC2(drv_data, true);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}