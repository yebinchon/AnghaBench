#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct resource {int dummy; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_35__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct omap_rtc {int is_pmic_controller; scalar_t__ irq_timer; scalar_t__ irq_alarm; int has_ext_clk; TYPE_1__* type; TYPE_2__* clk; TYPE_2__* pctldev; TYPE_2__* rtc; TYPE_2__* base; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_34__ {struct omap_rtc* priv; } ;
struct TYPE_33__ {int /*<<< orphan*/  name; } ;
struct TYPE_32__ {TYPE_6__ dev; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;
struct TYPE_31__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;scalar_t__ has_power_up_reset; scalar_t__ has_pmic_mode; scalar_t__ has_32kclk_en; int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int OMAP_RTC_CTRL_AUTO_COMP ; 
 int /*<<< orphan*/  OMAP_RTC_CTRL_REG ; 
 int OMAP_RTC_CTRL_SPLIT ; 
 int OMAP_RTC_CTRL_STOP ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_REG ; 
 int OMAP_RTC_OSC_32KCLK_EN ; 
 int OMAP_RTC_OSC_OSC32K_GZ_DISABLE ; 
 int /*<<< orphan*/  OMAP_RTC_OSC_REG ; 
 int OMAP_RTC_OSC_SEL_32KCLK_SRC ; 
 int OMAP_RTC_STATUS_ALARM ; 
 int OMAP_RTC_STATUS_ALARM2 ; 
 int OMAP_RTC_STATUS_POWER_UP ; 
 int /*<<< orphan*/  OMAP_RTC_STATUS_REG ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int) ; 
 void* FUNC8 (TYPE_6__*,char*) ; 
 TYPE_2__* FUNC9 (TYPE_6__*,struct resource*) ; 
 struct omap_rtc* FUNC10 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct omap_rtc*) ; 
 TYPE_2__* FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_5__ omap_rtc_nvmem_config ; 
 int /*<<< orphan*/  omap_rtc_of_match ; 
 int /*<<< orphan*/  omap_rtc_ops ; 
 scalar_t__ omap_rtc_power_off ; 
 struct omap_rtc* omap_rtc_power_off_rtc ; 
 TYPE_2__* FUNC15 (TYPE_3__*,TYPE_6__*,struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 struct platform_device_id* FUNC17 (struct platform_device*) ; 
 void* FUNC18 (struct platform_device*,int) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct omap_rtc*) ; 
 scalar_t__ pm_power_off ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*) ; 
 int /*<<< orphan*/  rtc_irq ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,TYPE_5__*) ; 
 TYPE_3__ rtc_pinctrl_desc ; 
 int FUNC26 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (struct omap_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct omap_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC31 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC32 (struct omap_rtc*) ; 

__attribute__((used)) static int FUNC33(struct platform_device *pdev)
{
	struct omap_rtc	*rtc;
	struct resource	*res;
	u8 reg, mask, new_ctrl;
	const struct platform_device_id *id_entry;
	const struct of_device_id *of_id;
	int ret;

	rtc = FUNC10(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	of_id = FUNC14(omap_rtc_of_match, &pdev->dev);
	if (of_id) {
		rtc->type = of_id->data;
		rtc->is_pmic_controller = rtc->type->has_pmic_mode &&
			FUNC13(pdev->dev.of_node);
	} else {
		id_entry = FUNC17(pdev);
		rtc->type = (void *)id_entry->driver_data;
	}

	rtc->irq_timer = FUNC18(pdev, 0);
	if (rtc->irq_timer <= 0)
		return -ENOENT;

	rtc->irq_alarm = FUNC18(pdev, 1);
	if (rtc->irq_alarm <= 0)
		return -ENOENT;

	rtc->clk = FUNC8(&pdev->dev, "ext-clk");
	if (!FUNC0(rtc->clk))
		rtc->has_ext_clk = true;
	else
		rtc->clk = FUNC8(&pdev->dev, "int-clk");

	if (!FUNC0(rtc->clk))
		FUNC3(rtc->clk);

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	rtc->base = FUNC9(&pdev->dev, res);
	if (FUNC0(rtc->base)) {
		FUNC2(rtc->clk);
		return FUNC1(rtc->base);
	}

	FUNC20(pdev, rtc);

	/* Enable the clock/module so that we can access the registers */
	FUNC22(&pdev->dev);
	FUNC23(&pdev->dev);

	rtc->type->unlock(rtc);

	/*
	 * disable interrupts
	 *
	 * NOTE: ALARM2 is not cleared on AM3352 if rtc_write (writeb) is used
	 */
	FUNC29(rtc, OMAP_RTC_INTERRUPTS_REG, 0);

	/* enable RTC functional clock */
	if (rtc->type->has_32kclk_en) {
		reg = FUNC26(rtc, OMAP_RTC_OSC_REG);
		FUNC29(rtc, OMAP_RTC_OSC_REG,
				reg | OMAP_RTC_OSC_32KCLK_EN);
	}

	/* clear old status */
	reg = FUNC26(rtc, OMAP_RTC_STATUS_REG);

	mask = OMAP_RTC_STATUS_ALARM;

	if (rtc->type->has_pmic_mode)
		mask |= OMAP_RTC_STATUS_ALARM2;

	if (rtc->type->has_power_up_reset) {
		mask |= OMAP_RTC_STATUS_POWER_UP;
		if (reg & OMAP_RTC_STATUS_POWER_UP)
			FUNC5(&pdev->dev, "RTC power up reset detected\n");
	}

	if (reg & mask)
		FUNC28(rtc, OMAP_RTC_STATUS_REG, reg & mask);

	/* On boards with split power, RTC_ON_NOFF won't reset the RTC */
	reg = FUNC26(rtc, OMAP_RTC_CTRL_REG);
	if (reg & OMAP_RTC_CTRL_STOP)
		FUNC5(&pdev->dev, "already running\n");

	/* force to 24 hour mode */
	new_ctrl = reg & (OMAP_RTC_CTRL_SPLIT | OMAP_RTC_CTRL_AUTO_COMP);
	new_ctrl |= OMAP_RTC_CTRL_STOP;

	/*
	 * BOARD-SPECIFIC CUSTOMIZATION CAN GO HERE:
	 *
	 *  - Device wake-up capability setting should come through chip
	 *    init logic. OMAP1 boards should initialize the "wakeup capable"
	 *    flag in the platform device if the board is wired right for
	 *    being woken up by RTC alarm. For OMAP-L138, this capability
	 *    is built into the SoC by the "Deep Sleep" capability.
	 *
	 *  - Boards wired so RTC_ON_nOFF is used as the reset signal,
	 *    rather than nPWRON_RESET, should forcibly enable split
	 *    power mode.  (Some chip errata report that RTC_CTRL_SPLIT
	 *    is write-only, and always reads as zero...)
	 */

	if (new_ctrl & OMAP_RTC_CTRL_SPLIT)
		FUNC5(&pdev->dev, "split power mode\n");

	if (reg != new_ctrl)
		FUNC28(rtc, OMAP_RTC_CTRL_REG, new_ctrl);

	/*
	 * If we have the external clock then switch to it so we can keep
	 * ticking across suspend.
	 */
	if (rtc->has_ext_clk) {
		reg = FUNC26(rtc, OMAP_RTC_OSC_REG);
		reg &= ~OMAP_RTC_OSC_OSC32K_GZ_DISABLE;
		reg |= OMAP_RTC_OSC_32KCLK_EN | OMAP_RTC_OSC_SEL_32KCLK_SRC;
		FUNC29(rtc, OMAP_RTC_OSC_REG, reg);
	}

	rtc->type->lock(rtc);

	FUNC7(&pdev->dev, true);

	rtc->rtc = FUNC12(&pdev->dev);
	if (FUNC0(rtc->rtc)) {
		ret = FUNC1(rtc->rtc);
		goto err;
	}

	rtc->rtc->ops = &omap_rtc_ops;
	rtc->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	rtc->rtc->range_max = RTC_TIMESTAMP_END_2099;
	omap_rtc_nvmem_config.priv = rtc;

	/* handle periodic and alarm irqs */
	ret = FUNC11(&pdev->dev, rtc->irq_timer, rtc_irq, 0,
			FUNC6(&rtc->rtc->dev), rtc);
	if (ret)
		goto err;

	if (rtc->irq_timer != rtc->irq_alarm) {
		ret = FUNC11(&pdev->dev, rtc->irq_alarm, rtc_irq, 0,
				FUNC6(&rtc->rtc->dev), rtc);
		if (ret)
			goto err;
	}

	/* Support ext_wakeup pinconf */
	rtc_pinctrl_desc.name = FUNC6(&pdev->dev);

	rtc->pctldev = FUNC15(&rtc_pinctrl_desc, &pdev->dev, rtc);
	if (FUNC0(rtc->pctldev)) {
		FUNC4(&pdev->dev, "Couldn't register pinctrl driver\n");
		ret = FUNC1(rtc->pctldev);
		goto err;
	}

	ret = FUNC27(rtc->rtc);
	if (ret)
		goto err_deregister_pinctrl;

	FUNC25(rtc->rtc, &omap_rtc_nvmem_config);

	if (rtc->is_pmic_controller) {
		if (!pm_power_off) {
			omap_rtc_power_off_rtc = rtc;
			pm_power_off = omap_rtc_power_off;
		}
	}

	return 0;

err_deregister_pinctrl:
	FUNC16(rtc->pctldev);
err:
	FUNC2(rtc->clk);
	FUNC7(&pdev->dev, false);
	rtc->type->lock(rtc);
	FUNC24(&pdev->dev);
	FUNC21(&pdev->dev);

	return ret;
}