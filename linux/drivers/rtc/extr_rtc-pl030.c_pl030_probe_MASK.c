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
struct pl030_rtc {scalar_t__ base; TYPE_1__* rtc; } ;
struct amba_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  start; } ;
struct amba_device {int /*<<< orphan*/ * irq; TYPE_2__ res; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ RTC_CR ; 
 scalar_t__ RTC_EOI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct amba_device*) ; 
 int FUNC4 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amba_device*,struct pl030_rtc*) ; 
 struct pl030_rtc* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pl030_rtc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  pl030_interrupt ; 
 int /*<<< orphan*/  pl030_ops ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pl030_rtc*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct amba_device *dev, const struct amba_id *id)
{
	struct pl030_rtc *rtc;
	int ret;

	ret = FUNC4(dev, NULL);
	if (ret)
		goto err_req;

	rtc = FUNC6(&dev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc) {
		ret = -ENOMEM;
		goto err_rtc;
	}

	rtc->rtc = FUNC7(&dev->dev);
	if (FUNC0(rtc->rtc)) {
		ret = FUNC1(rtc->rtc);
		goto err_rtc;
	}

	rtc->rtc->ops = &pl030_ops;
	rtc->base = FUNC9(dev->res.start, FUNC12(&dev->res));
	if (!rtc->base) {
		ret = -ENOMEM;
		goto err_rtc;
	}

	FUNC2(0, rtc->base + RTC_CR);
	FUNC2(0, rtc->base + RTC_EOI);

	FUNC5(dev, rtc);

	ret = FUNC11(dev->irq[0], pl030_interrupt, 0,
			  "rtc-pl030", rtc);
	if (ret)
		goto err_irq;

	ret = FUNC13(rtc->rtc);
	if (ret)
		goto err_reg;

	return 0;

 err_reg:
	FUNC8(dev->irq[0], rtc);
 err_irq:
	FUNC10(rtc->base);
 err_rtc:
	FUNC3(dev);
 err_req:
	return ret;
}