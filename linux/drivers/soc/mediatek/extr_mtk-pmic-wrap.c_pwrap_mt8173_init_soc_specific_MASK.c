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
struct pmic_wrapper {int /*<<< orphan*/  dev; TYPE_1__* slave; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dew_regs; } ;

/* Variables and functions */
 int EFAULT ; 
 size_t PWRAP_DEW_EVENT_OUT_EN ; 
 size_t PWRAP_DEW_EVENT_SRC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct pmic_wrapper*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pmic_wrapper *wrp)
{
	/* PMIC_DEWRAP enables */
	if (FUNC1(wrp, wrp->slave->dew_regs[PWRAP_DEW_EVENT_OUT_EN],
			0x1) ||
	    FUNC1(wrp, wrp->slave->dew_regs[PWRAP_DEW_EVENT_SRC_EN],
			0xffff)) {
		FUNC0(wrp->dev, "enable dewrap fail\n");
		return -EFAULT;
	}

	return 0;
}