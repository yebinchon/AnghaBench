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
struct watchdog_device {int dummy; } ;
struct rtd119x_watchdog_device {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ RTD119X_TCWTR ; 
 int /*<<< orphan*/  RTD119X_TCWTR_WDCLR ; 
 int FUNC0 (struct watchdog_device*) ; 
 struct rtd119x_watchdog_device* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdev)
{
	struct rtd119x_watchdog_device *data = FUNC1(wdev);

	FUNC2(RTD119X_TCWTR_WDCLR, data->base + RTD119X_TCWTR);

	return FUNC0(wdev);
}