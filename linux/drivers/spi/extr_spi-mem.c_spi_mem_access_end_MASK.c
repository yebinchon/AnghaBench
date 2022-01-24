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
struct spi_controller {TYPE_2__ dev; scalar_t__ auto_runtime_pm; int /*<<< orphan*/  bus_lock_mutex; int /*<<< orphan*/  io_mutex; } ;
struct TYPE_3__ {struct spi_controller* controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_mem *mem)
{
	struct spi_controller *ctlr = mem->spi->controller;

	FUNC0(&ctlr->io_mutex);
	FUNC0(&ctlr->bus_lock_mutex);

	if (ctlr->auto_runtime_pm)
		FUNC1(ctlr->dev.parent);
}