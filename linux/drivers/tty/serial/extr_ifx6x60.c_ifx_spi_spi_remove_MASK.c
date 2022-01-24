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
struct spi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reset_out; int /*<<< orphan*/  po; int /*<<< orphan*/  reset; int /*<<< orphan*/  mrdy; int /*<<< orphan*/  srdy; } ;
struct ifx_spi_device {TYPE_1__ gpio; int /*<<< orphan*/  io_work_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/ * saved_ifx_dev ; 
 struct ifx_spi_device* FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct ifx_spi_device *ifx_dev = FUNC4(spi);
	/* stop activity */
	FUNC5(&ifx_dev->io_work_tasklet);
	/* free irq */
	FUNC0(FUNC2(ifx_dev->gpio.reset_out), ifx_dev);
	FUNC0(FUNC2(ifx_dev->gpio.srdy), ifx_dev);

	FUNC1(ifx_dev->gpio.srdy);
	FUNC1(ifx_dev->gpio.mrdy);
	FUNC1(ifx_dev->gpio.reset);
	FUNC1(ifx_dev->gpio.po);
	FUNC1(ifx_dev->gpio.reset_out);

	/* free allocations */
	FUNC3(ifx_dev);

	saved_ifx_dev = NULL;
	return 0;
}