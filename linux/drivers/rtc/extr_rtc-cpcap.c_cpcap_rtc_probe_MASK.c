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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct cpcap_rtc {void* update_irq; void* alarm_irq; int /*<<< orphan*/  vendor; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rtc_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpcap_rtc_alarm_irq ; 
 int /*<<< orphan*/  cpcap_rtc_ops ; 
 int /*<<< orphan*/  cpcap_rtc_update_irq ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int) ; 
 struct cpcap_rtc* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cpcap_rtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct cpcap_rtc*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct cpcap_rtc *rtc;
	int err;

	rtc = FUNC6(dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->regmap = FUNC4(dev->parent, NULL);
	if (!rtc->regmap)
		return -ENODEV;

	FUNC11(pdev, rtc);
	rtc->rtc_dev = FUNC8(dev, "cpcap_rtc",
						&cpcap_rtc_ops, THIS_MODULE);

	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	err = FUNC2(dev, rtc->regmap, &rtc->vendor);
	if (err)
		return err;

	rtc->alarm_irq = FUNC10(pdev, 0);
	err = FUNC7(dev, rtc->alarm_irq, NULL,
					cpcap_rtc_alarm_irq, IRQF_TRIGGER_NONE,
					"rtc_alarm", rtc);
	if (err) {
		FUNC3(dev, "Could not request alarm irq: %d\n", err);
		return err;
	}
	FUNC9(rtc->alarm_irq);

	/* Stock Android uses the 1 Hz interrupt for "secure clock daemon",
	 * which is not supported by the mainline kernel. The mainline kernel
	 * does not use the irq at the moment, but we explicitly request and
	 * disable it, so that its masked and does not wake up the processor
	 * every second.
	 */
	rtc->update_irq = FUNC10(pdev, 1);
	err = FUNC7(dev, rtc->update_irq, NULL,
					cpcap_rtc_update_irq, IRQF_TRIGGER_NONE,
					"rtc_1hz", rtc);
	if (err) {
		FUNC3(dev, "Could not request update irq: %d\n", err);
		return err;
	}
	FUNC9(rtc->update_irq);

	err = FUNC5(dev, 1);
	if (err) {
		FUNC3(dev, "wakeup initialization failed (%d)\n", err);
		/* ignore error and continue without wakeup support */
	}

	return 0;
}