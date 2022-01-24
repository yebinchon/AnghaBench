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
struct qla_hw_data {int /*<<< orphan*/  portnum; } ;

/* Variables and functions */
 int CRB_WIN_LOCK_TIMEOUT ; 
 int /*<<< orphan*/  PCIE_SEM7_LOCK ; 
 int /*<<< orphan*/  QLA82XX_CRB_WIN_LOCK_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qla_hw_data *ha)
{
	int done = 0, timeout = 0;

	while (!done) {
		/* acquire semaphore3 from PCI HW block */
		done = FUNC1(ha, FUNC0(PCIE_SEM7_LOCK));
		if (done == 1)
			break;
		if (timeout >= CRB_WIN_LOCK_TIMEOUT)
			return -1;
		timeout++;
	}
	FUNC2(ha, QLA82XX_CRB_WIN_LOCK_ID, ha->portnum);
	return 0;
}