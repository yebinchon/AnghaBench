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
struct xwdt_device {int /*<<< orphan*/  clk; int /*<<< orphan*/  spinlock; scalar_t__ base; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int XWT_CSR0_EWDT1_MASK ; 
 scalar_t__ XWT_TWCSR0_OFFSET ; 
 scalar_t__ XWT_TWCSR1_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xwdt_device* FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd)
{
	u32 control_status_reg;
	struct xwdt_device *xdev = FUNC6(wdd);

	FUNC4(&xdev->spinlock);

	control_status_reg = FUNC1(xdev->base + XWT_TWCSR0_OFFSET);

	FUNC2((control_status_reg & ~XWT_CSR0_EWDT1_MASK),
		  xdev->base + XWT_TWCSR0_OFFSET);

	FUNC2(0, xdev->base + XWT_TWCSR1_OFFSET);

	FUNC5(&xdev->spinlock);

	FUNC0(xdev->clk);

	FUNC3("Stopped!\n");

	return 0;
}