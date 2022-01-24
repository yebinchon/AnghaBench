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
 int ENOMEM ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ql_adapter*) ; 
 int FUNC2 (struct ql_adapter*) ; 

__attribute__((used)) static int FUNC3(struct ql_adapter *qdev)
{
	int status = 0;

	if (FUNC1(qdev)) {
		FUNC0(qdev, ifup, qdev->ndev, "Unable to  allocate memory.\n");
		return -ENOMEM;
	}
	status = FUNC2(qdev);
	return status;
}