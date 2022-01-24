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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct wdat_wdt {TYPE_2__ wdd; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_WDAT_GET_RUNNING_STATE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wdat_wdt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct wdat_wdt *wdat)
{
	u32 running = 0;
	int ret;

	ret = FUNC2(wdat, ACPI_WDAT_GET_RUNNING_STATE, 0,
				  &running);
	if (ret && ret != -EOPNOTSUPP)
		FUNC0(&wdat->pdev->dev, "Failed to read running state\n");

	if (running)
		FUNC1(WDOG_HW_RUNNING, &wdat->wdd.status);
}