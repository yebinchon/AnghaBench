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
struct rtc_device {unsigned long long range_max; int /*<<< orphan*/  max_user_freq; int /*<<< orphan*/ * ops; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int num_resources; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ECMPHREG ; 
 int /*<<< orphan*/  ECMPLREG ; 
 int /*<<< orphan*/  ECMPMREG ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int /*<<< orphan*/  MAX_PERIODIC_RATE ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  RTCL1HREG ; 
 int /*<<< orphan*/  RTCL1LREG ; 
 scalar_t__ aie_irq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct platform_device*) ; 
 struct rtc_device* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  elapsedtime_interrupt ; 
 scalar_t__ pie_irq ; 
 scalar_t__ FUNC7 (struct platform_device*,int) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/ * rtc1_base ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rtc2_base ; 
 int /*<<< orphan*/  rtc_lock ; 
 int FUNC12 (struct rtc_device*) ; 
 int /*<<< orphan*/  rtclong1_interrupt ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vr41xx_rtc_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct resource *res;
	struct rtc_device *rtc;
	int retval;

	if (pdev->num_resources != 4)
		return -EBUSY;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EBUSY;

	rtc1_base = FUNC3(&pdev->dev, res->start, FUNC10(res));
	if (!rtc1_base)
		return -EBUSY;

	res = FUNC8(pdev, IORESOURCE_MEM, 1);
	if (!res) {
		retval = -EBUSY;
		goto err_rtc1_iounmap;
	}

	rtc2_base = FUNC3(&pdev->dev, res->start, FUNC10(res));
	if (!rtc2_base) {
		retval = -EBUSY;
		goto err_rtc1_iounmap;
	}

	rtc = FUNC5(&pdev->dev);
	if (FUNC0(rtc)) {
		retval = FUNC1(rtc);
		goto err_iounmap_all;
	}

	rtc->ops = &vr41xx_rtc_ops;

	/* 48-bit counter at 32.768 kHz */
	rtc->range_max = (1ULL << 33) - 1;
	rtc->max_user_freq = MAX_PERIODIC_RATE;

	FUNC13(&rtc_lock);

	FUNC11(ECMPLREG, 0);
	FUNC11(ECMPMREG, 0);
	FUNC11(ECMPHREG, 0);
	FUNC11(RTCL1LREG, 0);
	FUNC11(RTCL1HREG, 0);

	FUNC14(&rtc_lock);

	aie_irq = FUNC7(pdev, 0);
	if (aie_irq <= 0) {
		retval = -EBUSY;
		goto err_iounmap_all;
	}

	retval = FUNC4(&pdev->dev, aie_irq, elapsedtime_interrupt, 0,
				"elapsed_time", pdev);
	if (retval < 0)
		goto err_iounmap_all;

	pie_irq = FUNC7(pdev, 1);
	if (pie_irq <= 0) {
		retval = -EBUSY;
		goto err_iounmap_all;
	}

	retval = FUNC4(&pdev->dev, pie_irq, rtclong1_interrupt, 0,
				"rtclong1", pdev);
	if (retval < 0)
		goto err_iounmap_all;

	FUNC9(pdev, rtc);

	FUNC6(aie_irq);
	FUNC6(pie_irq);

	FUNC2(&pdev->dev, "Real Time Clock of NEC VR4100 series\n");

	retval = FUNC12(rtc);
	if (retval)
		goto err_iounmap_all;

	return 0;

err_iounmap_all:
	rtc2_base = NULL;

err_rtc1_iounmap:
	rtc1_base = NULL;

	return retval;
}