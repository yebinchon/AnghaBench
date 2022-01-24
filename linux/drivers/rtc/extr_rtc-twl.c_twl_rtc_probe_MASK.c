#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct twl_rtc {scalar_t__ class; int* reg_map; int rtc_irq_bits; TYPE_1__* rtc; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BIT_RTC_CTRL_REG_STOP_RTC_M ; 
 int BIT_RTC_STATUS_REG_ALARM_M ; 
 int BIT_RTC_STATUS_REG_POWER_UP_M ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  REG_INT_MSK_LINE_A ; 
 int /*<<< orphan*/  REG_INT_MSK_STS_A ; 
 int /*<<< orphan*/  REG_RTC_CTRL_REG ; 
 int /*<<< orphan*/  REG_RTC_INTERRUPTS_REG ; 
 int /*<<< orphan*/  REG_RTC_STATUS_REG ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  TWL6030_RTC_INT_MASK ; 
 scalar_t__ TWL_4030 ; 
 scalar_t__ TWL_6030 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 struct twl_rtc* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct twl_rtc*) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct twl_rtc*) ; 
 scalar_t__ twl4030_rtc_reg_map ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ twl6030_rtc_reg_map ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  twl_rtc_interrupt ; 
 int /*<<< orphan*/  twl_rtc_ops ; 
 int FUNC15 (struct twl_rtc*,int*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct twl_rtc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct twl_rtc *twl_rtc;
	struct device_node *np = pdev->dev.of_node;
	int ret = -EINVAL;
	int irq = FUNC10(pdev, 0);
	u8 rd_reg;

	if (!np) {
		FUNC2(&pdev->dev, "no DT info\n");
		return -EINVAL;
	}

	if (irq <= 0)
		return ret;

	twl_rtc = FUNC7(&pdev->dev, sizeof(*twl_rtc), GFP_KERNEL);
	if (!twl_rtc)
		return -ENOMEM;

	if (FUNC13()) {
		twl_rtc->class = TWL_4030;
		twl_rtc->reg_map = (u8 *)twl4030_rtc_reg_map;
	} else if (FUNC14()) {
		twl_rtc->class = TWL_6030;
		twl_rtc->reg_map = (u8 *)twl6030_rtc_reg_map;
	} else {
		FUNC2(&pdev->dev, "TWL Class not supported.\n");
		return -EINVAL;
	}

	ret = FUNC15(twl_rtc, &rd_reg, REG_RTC_STATUS_REG);
	if (ret < 0)
		return ret;

	if (rd_reg & BIT_RTC_STATUS_REG_POWER_UP_M)
		FUNC5(&pdev->dev, "Power up reset detected.\n");

	if (rd_reg & BIT_RTC_STATUS_REG_ALARM_M)
		FUNC5(&pdev->dev, "Pending Alarm interrupt detected.\n");

	/* Clear RTC Power up reset and pending alarm interrupts */
	ret = FUNC16(twl_rtc, rd_reg, REG_RTC_STATUS_REG);
	if (ret < 0)
		return ret;

	if (twl_rtc->class == TWL_6030) {
		FUNC12(TWL6030_RTC_INT_MASK,
			REG_INT_MSK_LINE_A);
		FUNC12(TWL6030_RTC_INT_MASK,
			REG_INT_MSK_STS_A);
	}

	FUNC3(&pdev->dev, "Enabling TWL-RTC\n");
	ret = FUNC16(twl_rtc, BIT_RTC_CTRL_REG_STOP_RTC_M,
			       REG_RTC_CTRL_REG);
	if (ret < 0)
		return ret;

	/* ensure interrupts are disabled, bootloaders can be strange */
	ret = FUNC16(twl_rtc, 0, REG_RTC_INTERRUPTS_REG);
	if (ret < 0)
		FUNC5(&pdev->dev, "unable to disable interrupt\n");

	/* init cached IRQ enable bits */
	ret = FUNC15(twl_rtc, &twl_rtc->rtc_irq_bits,
			      REG_RTC_INTERRUPTS_REG);
	if (ret < 0)
		return ret;

	FUNC11(pdev, twl_rtc);
	FUNC6(&pdev->dev, 1);

	twl_rtc->rtc = FUNC9(&pdev->dev, pdev->name,
					&twl_rtc_ops, THIS_MODULE);
	if (FUNC0(twl_rtc->rtc)) {
		FUNC2(&pdev->dev, "can't register RTC device, err %ld\n",
			FUNC1(twl_rtc->rtc));
		return FUNC1(twl_rtc->rtc);
	}

	ret = FUNC8(&pdev->dev, irq, NULL,
					twl_rtc_interrupt,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					FUNC4(&twl_rtc->rtc->dev), twl_rtc);
	if (ret < 0) {
		FUNC2(&pdev->dev, "IRQ is not free.\n");
		return ret;
	}

	return 0;
}