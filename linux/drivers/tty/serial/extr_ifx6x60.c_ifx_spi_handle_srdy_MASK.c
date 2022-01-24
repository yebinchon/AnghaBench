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
struct ifx_spi_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  io_work_tasklet; int /*<<< orphan*/  spi_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFX_SPI_POWER_SRDY ; 
 int /*<<< orphan*/  IFX_SPI_STATE_IO_IN_PROGRESS ; 
 int /*<<< orphan*/  IFX_SPI_STATE_IO_READY ; 
 int /*<<< orphan*/  IFX_SPI_STATE_TIMER_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ifx_spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ifx_spi_device *ifx_dev)
{
	if (FUNC5(IFX_SPI_STATE_TIMER_PENDING, &ifx_dev->flags)) {
		FUNC1(&ifx_dev->spi_timer);
		FUNC0(IFX_SPI_STATE_TIMER_PENDING, &ifx_dev->flags);
	}

	FUNC2(ifx_dev, IFX_SPI_POWER_SRDY);

	if (!FUNC5(IFX_SPI_STATE_IO_IN_PROGRESS, &ifx_dev->flags))
		FUNC4(&ifx_dev->io_work_tasklet);
	else
		FUNC3(IFX_SPI_STATE_IO_READY, &ifx_dev->flags);
}