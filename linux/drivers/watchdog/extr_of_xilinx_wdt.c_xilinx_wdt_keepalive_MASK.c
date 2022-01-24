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
typedef  int u32 ;
struct xwdt_device {int /*<<< orphan*/  spinlock; scalar_t__ base; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int XWT_CSR0_WDS_MASK ; 
 int XWT_CSR0_WRS_MASK ; 
 scalar_t__ XWT_TWCSR0_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xwdt_device* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdd)
{
	u32 control_status_reg;
	struct xwdt_device *xdev = FUNC4(wdd);

	FUNC2(&xdev->spinlock);

	control_status_reg = FUNC0(xdev->base + XWT_TWCSR0_OFFSET);
	control_status_reg |= (XWT_CSR0_WRS_MASK | XWT_CSR0_WDS_MASK);
	FUNC1(control_status_reg, xdev->base + XWT_TWCSR0_OFFSET);

	FUNC3(&xdev->spinlock);

	return 0;
}