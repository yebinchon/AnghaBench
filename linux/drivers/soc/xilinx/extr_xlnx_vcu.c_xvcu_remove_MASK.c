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
struct xvcu_device {int /*<<< orphan*/  aclk; int /*<<< orphan*/  pll_ref; int /*<<< orphan*/  logicore_reg_ba; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  VCU_GASKET_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xvcu_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct xvcu_device *xvcu;

	xvcu = FUNC1(pdev);
	if (!xvcu)
		return -ENODEV;

	/* Add the the Gasket isolation and put the VCU in reset. */
	FUNC2(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);

	FUNC0(xvcu->pll_ref);
	FUNC0(xvcu->aclk);

	return 0;
}