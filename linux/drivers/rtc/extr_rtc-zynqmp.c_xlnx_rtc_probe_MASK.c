#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct xlnx_rtc_dev {scalar_t__ alarm_irq; scalar_t__ sec_irq; TYPE_1__* rtc; int /*<<< orphan*/  calibval; TYPE_1__* reg_base; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_CALIB_DEF ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 TYPE_1__* FUNC5 (TYPE_3__*,struct resource*) ; 
 struct xlnx_rtc_dev* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlnx_rtc_dev*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct platform_device*,char*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct xlnx_rtc_dev*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct xlnx_rtc_dev*) ; 
 int /*<<< orphan*/  xlnx_rtc_interrupt ; 
 int /*<<< orphan*/  xlnx_rtc_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct xlnx_rtc_dev *xrtcdev;
	struct resource *res;
	int ret;

	xrtcdev = FUNC6(&pdev->dev, sizeof(*xrtcdev), GFP_KERNEL);
	if (!xrtcdev)
		return -ENOMEM;

	FUNC12(pdev, xrtcdev);

	xrtcdev->rtc = FUNC8(&pdev->dev);
	if (FUNC0(xrtcdev->rtc))
		return FUNC1(xrtcdev->rtc);

	xrtcdev->rtc->ops = &xlnx_rtc_ops;
	xrtcdev->rtc->range_max = U32_MAX;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);

	xrtcdev->reg_base = FUNC5(&pdev->dev, res);
	if (FUNC0(xrtcdev->reg_base))
		return FUNC1(xrtcdev->reg_base);

	xrtcdev->alarm_irq = FUNC10(pdev, "alarm");
	if (xrtcdev->alarm_irq < 0)
		return xrtcdev->alarm_irq;
	ret = FUNC7(&pdev->dev, xrtcdev->alarm_irq,
			       xlnx_rtc_interrupt, 0,
			       FUNC3(&pdev->dev), xrtcdev);
	if (ret) {
		FUNC2(&pdev->dev, "request irq failed\n");
		return ret;
	}

	xrtcdev->sec_irq = FUNC10(pdev, "sec");
	if (xrtcdev->sec_irq < 0)
		return xrtcdev->sec_irq;
	ret = FUNC7(&pdev->dev, xrtcdev->sec_irq,
			       xlnx_rtc_interrupt, 0,
			       FUNC3(&pdev->dev), xrtcdev);
	if (ret) {
		FUNC2(&pdev->dev, "request irq failed\n");
		return ret;
	}

	ret = FUNC9(pdev->dev.of_node, "calibration",
				   &xrtcdev->calibval);
	if (ret)
		xrtcdev->calibval = RTC_CALIB_DEF;

	FUNC14(xrtcdev);

	FUNC4(&pdev->dev, 1);

	return FUNC13(xrtcdev->rtc);
}