#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct cros_ec_rtc {TYPE_6__ notifier; int /*<<< orphan*/  rtc; struct cros_ec_device* cros_ec; } ;
struct cros_ec_device {int /*<<< orphan*/  event_notifier; } ;
struct cros_ec_dev {struct cros_ec_device* ec_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  cros_ec_rtc_event ; 
 int /*<<< orphan*/  cros_ec_rtc_ops ; 
 int FUNC3 (TYPE_1__*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct cros_ec_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 struct cros_ec_rtc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct cros_ec_rtc*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct cros_ec_dev *ec_dev = FUNC5(pdev->dev.parent);
	struct cros_ec_device *cros_ec = ec_dev->ec_dev;
	struct cros_ec_rtc *cros_ec_rtc;
	struct rtc_time tm;
	int ret;

	cros_ec_rtc = FUNC7(&pdev->dev, sizeof(*cros_ec_rtc),
				   GFP_KERNEL);
	if (!cros_ec_rtc)
		return -ENOMEM;

	FUNC9(pdev, cros_ec_rtc);
	cros_ec_rtc->cros_ec = cros_ec;

	/* Get initial time */
	ret = FUNC3(&pdev->dev, &tm);
	if (ret) {
		FUNC4(&pdev->dev, "failed to read RTC time\n");
		return ret;
	}

	ret = FUNC6(&pdev->dev, 1);
	if (ret) {
		FUNC4(&pdev->dev, "failed to initialize wakeup\n");
		return ret;
	}

	cros_ec_rtc->rtc = FUNC8(&pdev->dev, DRV_NAME,
						    &cros_ec_rtc_ops,
						    THIS_MODULE);
	if (FUNC0(cros_ec_rtc->rtc)) {
		ret = FUNC1(cros_ec_rtc->rtc);
		FUNC4(&pdev->dev, "failed to register rtc device\n");
		return ret;
	}

	/* Get RTC events from the EC. */
	cros_ec_rtc->notifier.notifier_call = cros_ec_rtc_event;
	ret = FUNC2(&cros_ec->event_notifier,
					       &cros_ec_rtc->notifier);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register notifier\n");
		return ret;
	}

	return 0;
}