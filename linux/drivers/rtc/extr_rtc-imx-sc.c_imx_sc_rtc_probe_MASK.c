#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  range_max; scalar_t__ range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* imx_sc_rtc ; 
 int /*<<< orphan*/  imx_sc_rtc_alarm_sc_notifier ; 
 int /*<<< orphan*/  imx_sc_rtc_ops ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_ipc_handle ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;

	ret = FUNC4(&rtc_ipc_handle);
	if (ret)
		return ret;

	FUNC2(&pdev->dev, true);

	imx_sc_rtc = FUNC3(&pdev->dev);
	if (FUNC0(imx_sc_rtc))
		return FUNC1(imx_sc_rtc);

	imx_sc_rtc->ops = &imx_sc_rtc_ops;
	imx_sc_rtc->range_min = 0;
	imx_sc_rtc->range_max = U32_MAX;

	ret = FUNC6(imx_sc_rtc);
	if (ret)
		return ret;

	FUNC5(&imx_sc_rtc_alarm_sc_notifier);

	return 0;
}