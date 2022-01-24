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
struct vcpu_info {scalar_t__ evtchn_upcall_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct vcpu_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xed_nesting_count ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  xen_vcpu ; 

__attribute__((used)) static void FUNC8(void)
{
	struct vcpu_info *vcpu_info = FUNC2(xen_vcpu);
	int cpu = FUNC4();
	unsigned count;

	do {
		vcpu_info->evtchn_upcall_pending = 0;

		if (FUNC1(xed_nesting_count) - 1)
			goto out;

		FUNC7(cpu);

		FUNC0(!FUNC5());

		count = FUNC2(xed_nesting_count);
		FUNC3(xed_nesting_count, 0);
	} while (count != 1 || vcpu_info->evtchn_upcall_pending);

out:

	FUNC6();
}