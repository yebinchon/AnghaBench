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
struct ql_adapter {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*) ; 

__attribute__((used)) static void FUNC4(struct ql_adapter *qdev)
{
	if (!FUNC2(qdev)) {
		FUNC0(qdev, drv, qdev->ndev, "Don't own firmware!\n");
		return;
	}

	if (!FUNC1(qdev->ndev)) {
		FUNC0(qdev, ifup, qdev->ndev,
			  "Force Coredump can only be done from interface that is up\n");
		return;
	}
	FUNC3(qdev);
}