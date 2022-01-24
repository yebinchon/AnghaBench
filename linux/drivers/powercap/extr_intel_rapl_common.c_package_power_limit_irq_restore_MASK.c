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
struct rapl_package {int power_limit_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_PACKAGE_THERM_INTERRUPT ; 
 int PACKAGE_PLN_INT_SAVED ; 
 int PACKAGE_THERM_INT_PLN_ENABLE ; 
 int /*<<< orphan*/  X86_FEATURE_PLN ; 
 int /*<<< orphan*/  X86_FEATURE_PTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct rapl_package *rp)
{
	u32 l, h;

	if (!FUNC0(X86_FEATURE_PTS) || !FUNC0(X86_FEATURE_PLN))
		return;

	/* irq enable state not saved, nothing to restore */
	if (!(rp->power_limit_irq & PACKAGE_PLN_INT_SAVED))
		return;

	FUNC1(MSR_IA32_PACKAGE_THERM_INTERRUPT, &l, &h);

	if (rp->power_limit_irq & PACKAGE_THERM_INT_PLN_ENABLE)
		l |= PACKAGE_THERM_INT_PLN_ENABLE;
	else
		l &= ~PACKAGE_THERM_INT_PLN_ENABLE;

	FUNC2(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);
}