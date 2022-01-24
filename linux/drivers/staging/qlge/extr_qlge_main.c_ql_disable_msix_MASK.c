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
struct ql_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * msi_x_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_MSIX_ENABLED ; 
 int /*<<< orphan*/  QL_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ql_adapter *qdev)
{
	if (FUNC4(QL_MSIX_ENABLED, &qdev->flags)) {
		FUNC3(qdev->pdev);
		FUNC0(QL_MSIX_ENABLED, &qdev->flags);
		FUNC1(qdev->msi_x_entry);
		qdev->msi_x_entry = NULL;
	} else if (FUNC4(QL_MSI_ENABLED, &qdev->flags)) {
		FUNC2(qdev->pdev);
		FUNC0(QL_MSI_ENABLED, &qdev->flags);
	}
}