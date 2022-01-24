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
typedef  int /*<<< orphan*/  u32 ;
struct timer_list {int dummy; } ;
struct ql_adapter {int /*<<< orphan*/  timer; int /*<<< orphan*/  ndev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  STS ; 
 struct ql_adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ql_adapter* qdev ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct ql_adapter *qdev = FUNC0(qdev, t, timer);
	u32 var = 0;

	var = FUNC4(qdev, STS);
	if (FUNC3(qdev->pdev)) {
		FUNC2(qdev, ifup, qdev->ndev, "EEH STS = 0x%.08x.\n", var);
		return;
	}

	FUNC1(&qdev->timer, jiffies + (5*HZ));
}