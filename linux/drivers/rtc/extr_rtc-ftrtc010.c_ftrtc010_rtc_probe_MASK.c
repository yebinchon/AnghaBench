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
typedef  int u64 ;
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct ftrtc010_rtc {TYPE_1__* rtc_dev; int /*<<< orphan*/  rtc_irq; scalar_t__ rtc_base; TYPE_1__* extclk; TYPE_1__* pclk; } ;
struct TYPE_6__ {int range_min; int range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FTRTC010_RTC_DAYS ; 
 scalar_t__ FTRTC010_RTC_HOUR ; 
 scalar_t__ FTRTC010_RTC_MINUTE ; 
 scalar_t__ FTRTC010_RTC_SECOND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int U32_MAX ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ftrtc010_rtc* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 TYPE_1__* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  ftrtc010_rtc_interrupt ; 
 int /*<<< orphan*/  ftrtc010_rtc_ops ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ftrtc010_rtc*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 
 int FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	u32 days, hour, min, sec;
	struct ftrtc010_rtc *rtc;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int ret;

	rtc = FUNC6(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (FUNC14(!rtc))
		return -ENOMEM;
	FUNC10(pdev, rtc);

	rtc->pclk = FUNC4(dev, "PCLK");
	if (FUNC0(rtc->pclk)) {
		FUNC3(dev, "could not get PCLK\n");
	} else {
		ret = FUNC2(rtc->pclk);
		if (ret) {
			FUNC3(dev, "failed to enable PCLK\n");
			return ret;
		}
	}
	rtc->extclk = FUNC4(dev, "EXTCLK");
	if (FUNC0(rtc->extclk)) {
		FUNC3(dev, "could not get EXTCLK\n");
	} else {
		ret = FUNC2(rtc->extclk);
		if (ret) {
			FUNC3(dev, "failed to enable EXTCLK\n");
			return ret;
		}
	}

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res)
		return -ENODEV;

	rtc->rtc_irq = res->start;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	rtc->rtc_base = FUNC5(dev, res->start,
				     FUNC12(res));
	if (!rtc->rtc_base)
		return -ENOMEM;

	rtc->rtc_dev = FUNC8(dev);
	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	rtc->rtc_dev->ops = &ftrtc010_rtc_ops;

	sec  = FUNC11(rtc->rtc_base + FTRTC010_RTC_SECOND);
	min  = FUNC11(rtc->rtc_base + FTRTC010_RTC_MINUTE);
	hour = FUNC11(rtc->rtc_base + FTRTC010_RTC_HOUR);
	days = FUNC11(rtc->rtc_base + FTRTC010_RTC_DAYS);

	rtc->rtc_dev->range_min = (u64)days * 86400 + hour * 3600 +
				  min * 60 + sec;
	rtc->rtc_dev->range_max = U32_MAX + rtc->rtc_dev->range_min;

	ret = FUNC7(dev, rtc->rtc_irq, ftrtc010_rtc_interrupt,
			       IRQF_SHARED, pdev->name, dev);
	if (FUNC14(ret))
		return ret;

	return FUNC13(rtc->rtc_dev);
}