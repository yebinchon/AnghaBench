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
struct TYPE_2__ {int /*<<< orphan*/  qmi_comp; } ;
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  dev; TYPE_1__ qmi; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_slim_ngd_ctrl*) ; 
 int FUNC10 (struct qcom_slim_ngd_ctrl*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct qcom_slim_ngd_ctrl *ctrl, bool enable)
{
	if (enable) {
		int ret = FUNC10(ctrl, false);

		if (ret) {
			FUNC1(ctrl->dev, "qmi init fail, ret:%d, state:%d\n",
				ret, ctrl->state);
			return ret;
		}
		/* controller state should be in sync with framework state */
		FUNC0(&ctrl->qmi.qmi_comp);
		if (!FUNC3(ctrl->dev) ||
				!FUNC7(ctrl->dev))
			FUNC8(ctrl->dev);
		else
			FUNC6(ctrl->dev);
		FUNC4(ctrl->dev);
		FUNC5(ctrl->dev);

		ret = FUNC11(&ctrl->ctrl);
		if (ret) {
			FUNC1(ctrl->dev, "error adding slim controller\n");
			return ret;
		}

		FUNC2(ctrl->dev, "SLIM controller Registered\n");
	} else {
		FUNC9(ctrl);
		FUNC12(&ctrl->ctrl);
	}

	return 0;
}