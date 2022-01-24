#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct rk808_rtc {int irq; TYPE_1__* rtc; TYPE_2__* creg; struct rk808* rk808; } ;
struct rk808 {int variant; int /*<<< orphan*/  regmap; } ;
struct TYPE_14__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  status_reg; int /*<<< orphan*/  ctrl_reg; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int BIT_RTC_CTRL_REG_RTC_READSEL_M ; 
 int BIT_RTC_CTRL_REG_STOP_RTC_M ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
#define  RK809_ID 129 
#define  RK817_ID 128 
 int /*<<< orphan*/  RTC_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,int,...) ; 
 struct rk808* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int) ; 
 struct rk808_rtc* FUNC5 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rk808_rtc*) ; 
 TYPE_1__* FUNC7 (TYPE_5__*) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rk808_rtc*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk808_alarm_irq ; 
 TYPE_2__ rk808_creg ; 
 int /*<<< orphan*/  rk808_rtc_ops ; 
 TYPE_2__ rk817_creg ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct rk808 *rk808 = FUNC3(pdev->dev.parent);
	struct rk808_rtc *rk808_rtc;
	int ret;

	rk808_rtc = FUNC5(&pdev->dev, sizeof(*rk808_rtc), GFP_KERNEL);
	if (rk808_rtc == NULL)
		return -ENOMEM;

	switch (rk808->variant) {
	case RK809_ID:
	case RK817_ID:
		rk808_rtc->creg = &rk817_creg;
		break;
	default:
		rk808_rtc->creg = &rk808_creg;
		break;
	}
	FUNC9(pdev, rk808_rtc);
	rk808_rtc->rk808 = rk808;

	/* start rtc running by default, and use shadowed timer. */
	ret = FUNC10(rk808->regmap, rk808_rtc->creg->ctrl_reg,
				 BIT_RTC_CTRL_REG_STOP_RTC_M |
				 BIT_RTC_CTRL_REG_RTC_READSEL_M,
				 BIT_RTC_CTRL_REG_RTC_READSEL_M);
	if (ret) {
		FUNC2(&pdev->dev,
			"Failed to update RTC control: %d\n", ret);
		return ret;
	}

	ret = FUNC11(rk808->regmap, rk808_rtc->creg->status_reg,
			   RTC_STATUS_MASK);
	if (ret) {
		FUNC2(&pdev->dev,
			"Failed to write RTC status: %d\n", ret);
		return ret;
	}

	FUNC4(&pdev->dev, 1);

	rk808_rtc->rtc = FUNC7(&pdev->dev);
	if (FUNC0(rk808_rtc->rtc))
		return FUNC1(rk808_rtc->rtc);

	rk808_rtc->rtc->ops = &rk808_rtc_ops;

	rk808_rtc->irq = FUNC8(pdev, 0);
	if (rk808_rtc->irq < 0)
		return rk808_rtc->irq;

	/* request alarm irq of rk808 */
	ret = FUNC6(&pdev->dev, rk808_rtc->irq, NULL,
					rk808_alarm_irq, 0,
					"RTC alarm", rk808_rtc);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
			rk808_rtc->irq, ret);
		return ret;
	}

	return FUNC12(rk808_rtc->rtc);
}