#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_rtc {int /*<<< orphan*/  pcf; int /*<<< orphan*/  rtc_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCF50633_IRQ_ALARM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pcf50633_rtc* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcf50633_rtc*) ; 
 int /*<<< orphan*/  pcf50633_rtc_irq ; 
 int /*<<< orphan*/  pcf50633_rtc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct pcf50633_rtc*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct pcf50633_rtc *rtc;

	rtc = FUNC3(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->pcf = FUNC2(pdev->dev.parent);
	FUNC6(pdev, rtc);
	rtc->rtc_dev = FUNC4(&pdev->dev, "pcf50633-rtc",
				&pcf50633_rtc_ops, THIS_MODULE);

	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	FUNC5(rtc->pcf, PCF50633_IRQ_ALARM,
					pcf50633_rtc_irq, rtc);
	return 0;
}