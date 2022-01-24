#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/  qmi_comp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * wakeup; int /*<<< orphan*/  xfer_msg; int /*<<< orphan*/  enable_stream; int /*<<< orphan*/  get_laddr; int /*<<< orphan*/  clkgear; TYPE_1__* a_framer; } ;
struct TYPE_4__ {int rootfreq; int superfreq; } ;
struct qcom_slim_ngd_ctrl {TYPE_3__ qmi; int /*<<< orphan*/  reconf; int /*<<< orphan*/  tx_buf_lock; int /*<<< orphan*/  state; TYPE_2__ ctrl; TYPE_1__ framer; struct device* dev; int /*<<< orphan*/  base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QCOM_SLIM_NGD_CTRL_DOWN ; 
 int SLIM_CL_PER_SUPERFRAME_DIV8 ; 
 int /*<<< orphan*/  SLIM_MAX_CLK_GEAR ; 
 int SLIM_ROOT_FREQ ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct qcom_slim_ngd_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct qcom_slim_ngd_ctrl* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qcom_slim_ngd_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,struct qcom_slim_ngd_ctrl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_slim_ngd_driver ; 
 int /*<<< orphan*/  qcom_slim_ngd_enable_stream ; 
 int /*<<< orphan*/  qcom_slim_ngd_get_laddr ; 
 int /*<<< orphan*/  qcom_slim_ngd_interrupt ; 
 int /*<<< orphan*/  qcom_slim_ngd_xfer_msg ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct qcom_slim_ngd_ctrl *ctrl;
	struct resource *res;
	int ret;

	ctrl = FUNC5(dev, sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return -ENOMEM;

	FUNC3(dev, ctrl);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	ctrl->base = FUNC4(dev, res);
	if (FUNC0(ctrl->base))
		return FUNC1(ctrl->base);

	res = FUNC10(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC2(&pdev->dev, "no slimbus IRQ resource\n");
		return -ENODEV;
	}

	ret = FUNC6(dev, res->start, qcom_slim_ngd_interrupt,
			       IRQF_TRIGGER_HIGH, "slim-ngd", ctrl);
	if (ret) {
		FUNC2(&pdev->dev, "request IRQ failed\n");
		return ret;
	}

	ctrl->dev = dev;
	ctrl->framer.rootfreq = SLIM_ROOT_FREQ >> 3;
	ctrl->framer.superfreq =
		ctrl->framer.rootfreq / SLIM_CL_PER_SUPERFRAME_DIV8;

	ctrl->ctrl.a_framer = &ctrl->framer;
	ctrl->ctrl.clkgear = SLIM_MAX_CLK_GEAR;
	ctrl->ctrl.get_laddr = qcom_slim_ngd_get_laddr;
	ctrl->ctrl.enable_stream = qcom_slim_ngd_enable_stream;
	ctrl->ctrl.xfer_msg = qcom_slim_ngd_xfer_msg;
	ctrl->ctrl.wakeup = NULL;
	ctrl->state = QCOM_SLIM_NGD_CTRL_DOWN;

	FUNC11(&ctrl->tx_buf_lock);
	FUNC7(&ctrl->reconf);
	FUNC7(&ctrl->qmi.qmi_comp);

	FUNC9(&qcom_slim_ngd_driver);
	return FUNC8(dev, ctrl);
}