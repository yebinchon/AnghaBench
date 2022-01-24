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
struct spi_device {int dummy; } ;
struct pi433_device {struct pi433_device* rx_buffer; int /*<<< orphan*/  cdev; int /*<<< orphan*/  devt; int /*<<< orphan*/  tx_task_struct; int /*<<< orphan*/ * spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pi433_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pi433_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pi433_class ; 
 int /*<<< orphan*/  FUNC5 (struct pi433_device*) ; 
 struct pi433_device* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct pi433_device	*device = FUNC6(spi);

	/* free GPIOs */
	FUNC2(device);

	/* make sure ops on existing fds can abort cleanly */
	device->spi = NULL;

	FUNC4(device->tx_task_struct);

	FUNC1(pi433_class, device->devt);

	FUNC0(device->cdev);

	FUNC5(device);

	FUNC3(device->rx_buffer);
	FUNC3(device);

	return 0;
}