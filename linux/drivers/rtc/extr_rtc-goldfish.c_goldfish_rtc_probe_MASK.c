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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct goldfish_rtc {scalar_t__ irq; TYPE_1__* rtc; TYPE_1__* base; } ;
struct TYPE_6__ {int range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int NSEC_PER_SEC ; 
 int FUNC1 (TYPE_1__*) ; 
 int U64_MAX ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct goldfish_rtc* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct goldfish_rtc*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  goldfish_rtc_interrupt ; 
 int /*<<< orphan*/  goldfish_rtc_ops ; 
 scalar_t__ FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct goldfish_rtc*) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct goldfish_rtc *rtcdrv;
	struct resource *r;
	int err;

	rtcdrv = FUNC3(&pdev->dev, sizeof(*rtcdrv), GFP_KERNEL);
	if (!rtcdrv)
		return -ENOMEM;

	FUNC8(pdev, rtcdrv);

	r = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!r)
		return -ENODEV;

	rtcdrv->base = FUNC2(&pdev->dev, r);
	if (FUNC0(rtcdrv->base))
		return -ENODEV;

	rtcdrv->irq = FUNC6(pdev, 0);
	if (rtcdrv->irq < 0)
		return -ENODEV;

	rtcdrv->rtc = FUNC5(&pdev->dev);
	if (FUNC0(rtcdrv->rtc))
		return FUNC1(rtcdrv->rtc);

	rtcdrv->rtc->ops = &goldfish_rtc_ops;
	rtcdrv->rtc->range_max = U64_MAX / NSEC_PER_SEC;

	err = FUNC4(&pdev->dev, rtcdrv->irq,
			       goldfish_rtc_interrupt,
			       0, pdev->name, rtcdrv);
	if (err)
		return err;

	return FUNC9(rtcdrv->rtc);
}