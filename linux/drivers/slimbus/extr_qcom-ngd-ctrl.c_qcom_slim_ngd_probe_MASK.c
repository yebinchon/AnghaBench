#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device* dev; } ;
struct qcom_slim_ngd_ctrl {scalar_t__ mwq; int /*<<< orphan*/  qmi; int /*<<< orphan*/  m_work; TYPE_1__ ctrl; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QCOM_SLIM_NGD_AUTOSUSPEND ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct qcom_slim_ngd_ctrl* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  qcom_slim_ngd_master_worker ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct qcom_slim_ngd_ctrl*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct qcom_slim_ngd_ctrl *ctrl = FUNC4(pdev);
	struct device *dev = &pdev->dev;
	int ret;

	ctrl->ctrl.dev = dev;

	FUNC9(dev);
	FUNC7(dev, QCOM_SLIM_NGD_AUTOSUSPEND);
	FUNC8(dev);
	FUNC5(dev);
	FUNC6(dev);
	ret = FUNC11(ctrl);
	if (ret) {
		FUNC3(&pdev->dev, "QMI service registration failed:%d", ret);
		return ret;
	}

	FUNC0(&ctrl->m_work, qcom_slim_ngd_master_worker);
	ctrl->mwq = FUNC1("ngd_master");
	if (!ctrl->mwq) {
		FUNC3(&pdev->dev, "Failed to start master worker\n");
		ret = -ENOMEM;
		goto wq_err;
	}

	return 0;
wq_err:
	FUNC10(&ctrl->qmi);
	if (ctrl->mwq)
		FUNC2(ctrl->mwq);

	return ret;
}