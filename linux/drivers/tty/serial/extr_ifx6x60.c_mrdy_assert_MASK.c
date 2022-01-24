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
struct TYPE_2__ {int /*<<< orphan*/  srdy; } ;
struct ifx_spi_device {int /*<<< orphan*/  spi_timer; int /*<<< orphan*/  flags; TYPE_1__ gpio; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IFX_SPI_POWER_DATA_PENDING ; 
 int /*<<< orphan*/  IFX_SPI_STATE_TIMER_PENDING ; 
 int IFX_SPI_TIMEOUT_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifx_spi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ifx_spi_device *ifx_dev)
{
	int val = FUNC0(ifx_dev->gpio.srdy);
	if (!val) {
		if (!FUNC4(IFX_SPI_STATE_TIMER_PENDING,
				      &ifx_dev->flags)) {
			FUNC2(&ifx_dev->spi_timer,jiffies + IFX_SPI_TIMEOUT_SEC*HZ);

		}
	}
	FUNC1(ifx_dev, IFX_SPI_POWER_DATA_PENDING);
	FUNC3(ifx_dev);
}