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
struct xwdt_device {int /*<<< orphan*/  spinlock; scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct watchdog_device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int XWT_CSR0_EWDT1_MASK ; 
 int XWT_CSR0_WDS_MASK ; 
 int XWT_CSR0_WRS_MASK ; 
 int XWT_CSRX_EWDT2_MASK ; 
 scalar_t__ XWT_TWCSR0_OFFSET ; 
 scalar_t__ XWT_TWCSR1_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xwdt_device* FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd)
{
	int ret;
	u32 control_status_reg;
	struct xwdt_device *xdev = FUNC6(wdd);

	ret = FUNC0(xdev->clk);
	if (ret) {
		FUNC1(wdd->parent, "Failed to enable clock\n");
		return ret;
	}

	FUNC4(&xdev->spinlock);

	/* Clean previous status and enable the watchdog timer */
	control_status_reg = FUNC2(xdev->base + XWT_TWCSR0_OFFSET);
	control_status_reg |= (XWT_CSR0_WRS_MASK | XWT_CSR0_WDS_MASK);

	FUNC3((control_status_reg | XWT_CSR0_EWDT1_MASK),
		  xdev->base + XWT_TWCSR0_OFFSET);

	FUNC3(XWT_CSRX_EWDT2_MASK, xdev->base + XWT_TWCSR1_OFFSET);

	FUNC5(&xdev->spinlock);

	return 0;
}