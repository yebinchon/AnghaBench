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
struct qla_hw_data {int dummy; } ;

/* Variables and functions */
 int IDC_LOCK_TIMEOUT ; 
 int /*<<< orphan*/  PCIE_SEM5_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct qla_hw_data *ha)
{
	int i;
	int done = 0, timeout = 0;

	while (!done) {
		/* acquire semaphore5 from PCI HW block */
		done = FUNC3(ha, FUNC0(PCIE_SEM5_LOCK));
		if (done == 1)
			break;
		if (timeout >= IDC_LOCK_TIMEOUT)
			return -1;

		timeout++;

		/* Yield CPU */
		if (!FUNC2())
			FUNC4();
		else {
			for (i = 0; i < 20; i++)
				FUNC1();
		}
	}

	return 0;
}