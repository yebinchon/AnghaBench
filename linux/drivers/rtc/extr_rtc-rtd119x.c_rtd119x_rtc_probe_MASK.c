#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rtd119x_rtc {int base_year; scalar_t__ rtcdev; scalar_t__ clk; scalar_t__ base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ RTD_RTCACR ; 
 int RTD_RTCACR_RTCPWR ; 
 scalar_t__ RTD_RTCDATE1 ; 
 scalar_t__ RTD_RTCDATE2 ; 
 scalar_t__ RTD_RTCHR ; 
 scalar_t__ RTD_RTCMIN ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct resource*) ; 
 struct rtd119x_rtc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct rtd119x_rtc*) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  rtd119x_rtc_ops ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct rtd119x_rtc *data;
	struct resource *res;
	u32 val;
	int ret;

	data = FUNC7(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC11(pdev, data);
	data->base_year = 2014;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC6(&pdev->dev, res);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	data->clk = FUNC9(pdev->dev.of_node, 0);
	if (FUNC0(data->clk))
		return FUNC1(data->clk);

	ret = FUNC3(data->clk);
	if (ret) {
		FUNC4(data->clk);
		return ret;
	}

	val = FUNC12(data->base + RTD_RTCACR);
	if (!(val & RTD_RTCACR_RTCPWR)) {
		FUNC15(RTD_RTCACR_RTCPWR, data->base + RTD_RTCACR);

		FUNC13(&pdev->dev);

		FUNC15(0, data->base + RTD_RTCMIN);
		FUNC15(0, data->base + RTD_RTCHR);
		FUNC15(0, data->base + RTD_RTCDATE1);
		FUNC15(0, data->base + RTD_RTCDATE2);
	}

	FUNC14(&pdev->dev, true);

	data->rtcdev = FUNC8(&pdev->dev, "rtc",
						&rtd119x_rtc_ops, THIS_MODULE);
	if (FUNC0(data->rtcdev)) {
		FUNC5(&pdev->dev, "failed to register rtc device");
		FUNC2(data->clk);
		FUNC4(data->clk);
		return FUNC1(data->rtcdev);
	}

	return 0;
}