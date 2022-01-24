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
struct watchdog_device {int dummy; } ;
struct TYPE_2__ {unsigned int timeout; } ;
struct rtd119x_watchdog_device {TYPE_1__ wdt_dev; scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ RTD119X_TCWOV ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rtd119x_watchdog_device* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdev, unsigned int val)
{
	struct rtd119x_watchdog_device *data = FUNC1(wdev);

	FUNC2(val * FUNC0(data->clk), data->base + RTD119X_TCWOV);

	data->wdt_dev.timeout = val;

	return 0;
}