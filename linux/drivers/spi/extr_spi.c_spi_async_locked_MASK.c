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
struct spi_message {int dummy; } ;
struct spi_device {struct spi_controller* controller; } ;
struct spi_controller {int /*<<< orphan*/  bus_lock_spinlock; } ;

/* Variables and functions */
 int FUNC0 (struct spi_device*,struct spi_message*) ; 
 int FUNC1 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct spi_device *spi, struct spi_message *message)
{
	struct spi_controller *ctlr = spi->controller;
	int ret;
	unsigned long flags;

	ret = FUNC1(spi, message);
	if (ret != 0)
		return ret;

	FUNC2(&ctlr->bus_lock_spinlock, flags);

	ret = FUNC0(spi, message);

	FUNC3(&ctlr->bus_lock_spinlock, flags);

	return ret;

}