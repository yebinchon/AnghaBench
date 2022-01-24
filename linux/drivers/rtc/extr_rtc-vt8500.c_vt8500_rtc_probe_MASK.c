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
struct vt8500_rtc {int irq_alarm; scalar_t__ rtc; scalar_t__ regbase; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ VT8500_RTC_CR ; 
 int /*<<< orphan*/  VT8500_RTC_CR_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct vt8500_rtc* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vt8500_rtc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct vt8500_rtc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vt8500_rtc_irq ; 
 int /*<<< orphan*/  vt8500_rtc_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct vt8500_rtc *vt8500_rtc;
	struct resource	*res;
	int ret;

	vt8500_rtc = FUNC4(&pdev->dev,
			   sizeof(struct vt8500_rtc), GFP_KERNEL);
	if (!vt8500_rtc)
		return -ENOMEM;

	FUNC10(&vt8500_rtc->lock);
	FUNC9(pdev, vt8500_rtc);

	vt8500_rtc->irq_alarm = FUNC7(pdev, 0);
	if (vt8500_rtc->irq_alarm < 0)
		return vt8500_rtc->irq_alarm;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	vt8500_rtc->regbase = FUNC3(&pdev->dev, res);
	if (FUNC0(vt8500_rtc->regbase))
		return FUNC1(vt8500_rtc->regbase);

	/* Enable RTC and set it to 24-hour mode */
	FUNC11(VT8500_RTC_CR_ENABLE,
	       vt8500_rtc->regbase + VT8500_RTC_CR);

	vt8500_rtc->rtc = FUNC6(&pdev->dev, "vt8500-rtc",
					      &vt8500_rtc_ops, THIS_MODULE);
	if (FUNC0(vt8500_rtc->rtc)) {
		ret = FUNC1(vt8500_rtc->rtc);
		FUNC2(&pdev->dev,
			"Failed to register RTC device -> %d\n", ret);
		goto err_return;
	}

	ret = FUNC5(&pdev->dev, vt8500_rtc->irq_alarm,
				vt8500_rtc_irq, 0, "rtc alarm", vt8500_rtc);
	if (ret < 0) {
		FUNC2(&pdev->dev, "can't get irq %i, err %d\n",
			vt8500_rtc->irq_alarm, ret);
		goto err_return;
	}

	return 0;

err_return:
	return ret;
}