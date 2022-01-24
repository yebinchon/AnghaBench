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
struct ql_adapter {int /*<<< orphan*/  asic_reset_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  QL_ASIC_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct ql_adapter *qdev)
{
	FUNC2(qdev);
	FUNC1(qdev);
	/* Clear adapter up bit to signal the recovery
	 * process that it shouldn't kill the reset worker
	 * thread
	 */
	FUNC0(QL_ADAPTER_UP, &qdev->flags);
	/* Set asic recovery bit to indicate reset process that we are
	 * in fatal error recovery process rather than normal close
	 */
	FUNC4(QL_ASIC_RECOVERY, &qdev->flags);
	FUNC3(qdev->workqueue, &qdev->asic_reset_work, 0);
}