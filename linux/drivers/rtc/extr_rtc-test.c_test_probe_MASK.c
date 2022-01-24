#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ expires; } ;
struct rtc_test_data {TYPE_2__* rtc; TYPE_1__ alarm; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct rtc_test_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct rtc_test_data*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  test_rtc_alarm_handler ; 
 int /*<<< orphan*/  test_rtc_ops ; 
 int /*<<< orphan*/  test_rtc_ops_noalm ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *plat_dev)
{
	struct rtc_test_data *rtd;

	rtd = FUNC3(&plat_dev->dev, sizeof(*rtd), GFP_KERNEL);
	if (!rtd)
		return -ENOMEM;

	FUNC5(plat_dev, rtd);

	rtd->rtc = FUNC4(&plat_dev->dev);
	if (FUNC0(rtd->rtc))
		return FUNC1(rtd->rtc);

	switch (plat_dev->id) {
	case 0:
		rtd->rtc->ops = &test_rtc_ops_noalm;
		break;
	default:
		rtd->rtc->ops = &test_rtc_ops;
		FUNC2(&plat_dev->dev, 1);
	}

	FUNC7(&rtd->alarm, test_rtc_alarm_handler, 0);
	rtd->alarm.expires = 0;

	return FUNC6(rtd->rtc);
}