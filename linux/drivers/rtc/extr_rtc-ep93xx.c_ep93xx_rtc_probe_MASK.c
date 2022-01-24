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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ep93xx_rtc {TYPE_1__* rtc; TYPE_1__* mmio_base; } ;
struct TYPE_7__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ep93xx_rtc* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ep93xx_rtc_ops ; 
 int /*<<< orphan*/  ep93xx_rtc_sysfs_files ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct ep93xx_rtc*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct ep93xx_rtc *ep93xx_rtc;
	struct resource *res;
	int err;

	ep93xx_rtc = FUNC3(&pdev->dev, sizeof(*ep93xx_rtc), GFP_KERNEL);
	if (!ep93xx_rtc)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	ep93xx_rtc->mmio_base = FUNC2(&pdev->dev, res);
	if (FUNC0(ep93xx_rtc->mmio_base))
		return FUNC1(ep93xx_rtc->mmio_base);

	FUNC6(pdev, ep93xx_rtc);

	ep93xx_rtc->rtc = FUNC4(&pdev->dev);
	if (FUNC0(ep93xx_rtc->rtc))
		return FUNC1(ep93xx_rtc->rtc);

	ep93xx_rtc->rtc->ops = &ep93xx_rtc_ops;
	ep93xx_rtc->rtc->range_max = U32_MAX;

	err = FUNC7(ep93xx_rtc->rtc, &ep93xx_rtc_sysfs_files);
	if (err)
		return err;

	return FUNC8(ep93xx_rtc->rtc);
}