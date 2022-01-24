#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct sam9_rtc {int irq; TYPE_1__* sclk; TYPE_1__* rtcdev; TYPE_1__* gpbr; int /*<<< orphan*/  gpbr_offset; TYPE_1__* rtt; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct TYPE_22__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_phandle_args {int /*<<< orphan*/ * args; int /*<<< orphan*/  np; } ;
struct TYPE_21__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 unsigned int AT91_RTT_ALMIEN ; 
 unsigned int AT91_RTT_RTPRES ; 
 unsigned int AT91_RTT_RTTINCIEN ; 
 unsigned int AT91_RTT_RTTRST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_COND_SUSPEND ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MR ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  at91_rtc_interrupt ; 
 int /*<<< orphan*/  at91_rtc_ops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 TYPE_1__* FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (TYPE_4__*,struct resource*) ; 
 struct sam9_rtc* FUNC13 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sam9_rtc*) ; 
 TYPE_1__* FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (struct sam9_rtc*) ; 
 int /*<<< orphan*/  FUNC17 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct sam9_rtc*) ; 
 int FUNC22 (TYPE_1__*) ; 
 unsigned int FUNC23 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct sam9_rtc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct resource	*r;
	struct sam9_rtc	*rtc;
	int		ret, irq;
	u32		mr;
	unsigned int	sclk_rate;
	struct of_phandle_args args;

	irq = FUNC19(pdev, 0);
	if (irq < 0)
		return irq;

	rtc = FUNC13(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	FUNC25(&rtc->lock);
	rtc->irq = irq;

	/* platform setup code should have handled this; sigh */
	if (!FUNC9(&pdev->dev))
		FUNC10(&pdev->dev, 1);

	FUNC21(pdev, rtc);

	r = FUNC20(pdev, IORESOURCE_MEM, 0);
	rtc->rtt = FUNC12(&pdev->dev, r);
	if (FUNC0(rtc->rtt))
		return FUNC1(rtc->rtt);

	ret = FUNC18(pdev->dev.of_node,
					       "atmel,rtt-rtc-time-reg", 1, 0,
					       &args);
	if (ret)
		return ret;

	rtc->gpbr = FUNC26(args.np);
	rtc->gpbr_offset = args.args[0];
	if (FUNC0(rtc->gpbr)) {
		FUNC6(&pdev->dev, "failed to retrieve gpbr regmap, aborting.\n");
		return -ENOMEM;
	}

	rtc->sclk = FUNC11(&pdev->dev, NULL);
	if (FUNC0(rtc->sclk))
		return FUNC1(rtc->sclk);

	ret = FUNC4(rtc->sclk);
	if (ret) {
		FUNC6(&pdev->dev, "Could not enable slow clock\n");
		return ret;
	}

	sclk_rate = FUNC3(rtc->sclk);
	if (!sclk_rate || sclk_rate > AT91_RTT_RTPRES) {
		FUNC6(&pdev->dev, "Invalid slow clock rate\n");
		ret = -EINVAL;
		goto err_clk;
	}

	mr = FUNC23(rtc, MR);

	/* unless RTT is counting at 1 Hz, re-initialize it */
	if ((mr & AT91_RTT_RTPRES) != sclk_rate) {
		mr = AT91_RTT_RTTRST | (sclk_rate & AT91_RTT_RTPRES);
		FUNC17(rtc, 0);
	}

	/* disable all interrupts (same as on shutdown path) */
	mr &= ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN);
	FUNC24(rtc, MR, mr);

	rtc->rtcdev = FUNC15(&pdev->dev);
	if (FUNC0(rtc->rtcdev)) {
		ret = FUNC1(rtc->rtcdev);
		goto err_clk;
	}

	rtc->rtcdev->ops = &at91_rtc_ops;
	rtc->rtcdev->range_max = U32_MAX;

	/* register irq handler after we know what name we'll use */
	ret = FUNC14(&pdev->dev, rtc->irq, at91_rtc_interrupt,
			       IRQF_SHARED | IRQF_COND_SUSPEND,
			       FUNC7(&rtc->rtcdev->dev), rtc);
	if (ret) {
		FUNC5(&pdev->dev, "can't share IRQ %d?\n", rtc->irq);
		goto err_clk;
	}

	/* NOTE:  sam9260 rev A silicon has a ROM bug which resets the
	 * RTT on at least some reboots.  If you have that chip, you must
	 * initialize the time from some external source like a GPS, wall
	 * clock, discrete RTC, etc
	 */

	if (FUNC16(rtc) == 0)
		FUNC8(&pdev->dev, "%s: SET TIME!\n",
			 FUNC7(&rtc->rtcdev->dev));

	return FUNC22(rtc->rtcdev);

err_clk:
	FUNC2(rtc->sclk);

	return ret;
}