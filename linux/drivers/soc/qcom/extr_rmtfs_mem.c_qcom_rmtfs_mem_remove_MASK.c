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
struct qcom_scm_vmperm {int /*<<< orphan*/  perm; int /*<<< orphan*/  vmid; } ;
struct qcom_rmtfs_mem {int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; scalar_t__ perms; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_SCM_PERM_RW ; 
 int /*<<< orphan*/  QCOM_SCM_VMID_HLOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qcom_rmtfs_mem* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,struct qcom_scm_vmperm*,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct qcom_rmtfs_mem *rmtfs_mem = FUNC1(&pdev->dev);
	struct qcom_scm_vmperm perm;

	if (rmtfs_mem->perms) {
		perm.vmid = QCOM_SCM_VMID_HLOS;
		perm.perm = QCOM_SCM_PERM_RW;

		FUNC3(rmtfs_mem->addr, rmtfs_mem->size,
				    &rmtfs_mem->perms, &perm, 1);
	}

	FUNC0(&rmtfs_mem->cdev, &rmtfs_mem->dev);
	FUNC2(&rmtfs_mem->dev);

	return 0;
}