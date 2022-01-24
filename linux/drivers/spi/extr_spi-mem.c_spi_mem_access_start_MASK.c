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
struct spi_mem {TYPE_1__* spi; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct spi_controller {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  bus_lock_mutex; TYPE_2__ dev; scalar_t__ auto_runtime_pm; } ;
struct TYPE_3__ {struct spi_controller* controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct spi_mem *mem)
{
	struct spi_controller *ctlr = mem->spi->controller;

	/*
	 * Flush the message queue before executing our SPI memory
	 * operation to prevent preemption of regular SPI transfers.
	 */
	FUNC3(ctlr);

	if (ctlr->auto_runtime_pm) {
		int ret;

		ret = FUNC2(ctlr->dev.parent);
		if (ret < 0) {
			FUNC0(&ctlr->dev, "Failed to power device: %d\n",
				ret);
			return ret;
		}
	}

	FUNC1(&ctlr->bus_lock_mutex);
	FUNC1(&ctlr->io_mutex);

	return 0;
}