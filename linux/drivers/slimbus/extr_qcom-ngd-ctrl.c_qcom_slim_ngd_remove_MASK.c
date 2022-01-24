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
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/ * ngd; scalar_t__ mwq; int /*<<< orphan*/  qmi; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qcom_slim_ngd_ctrl* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qcom_slim_ngd_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_slim_ngd_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct qcom_slim_ngd_ctrl *ctrl = FUNC2(pdev);

	FUNC3(&pdev->dev);
	FUNC4(ctrl, false);
	FUNC5(ctrl);
	FUNC6(&ctrl->qmi);
	if (ctrl->mwq)
		FUNC0(ctrl->mwq);

	FUNC1(ctrl->ngd);
	ctrl->ngd = NULL;
	return 0;
}