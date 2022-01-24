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
struct rapl_package {int /*<<< orphan*/  lead_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_PLN ; 
 int /*<<< orphan*/  X86_FEATURE_PTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power_limit_irq_save_cpu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rapl_package*,int) ; 

__attribute__((used)) static void FUNC2(struct rapl_package *rp)
{
	if (!FUNC0(X86_FEATURE_PTS) || !FUNC0(X86_FEATURE_PLN))
		return;

	FUNC1(rp->lead_cpu, power_limit_irq_save_cpu, rp, 1);
}