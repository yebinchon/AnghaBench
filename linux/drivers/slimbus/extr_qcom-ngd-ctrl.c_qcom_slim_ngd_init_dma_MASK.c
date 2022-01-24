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
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct qcom_slim_ngd_ctrl*) ; 
 int FUNC2 (struct qcom_slim_ngd_ctrl*) ; 

__attribute__((used)) static int FUNC3(struct qcom_slim_ngd_ctrl *ctrl)
{
	int ret = 0;

	ret = FUNC1(ctrl);
	if (ret) {
		FUNC0(ctrl->dev, "rx dma init failed\n");
		return ret;
	}

	ret = FUNC2(ctrl);
	if (ret)
		FUNC0(ctrl->dev, "tx dma init failed\n");

	return ret;
}