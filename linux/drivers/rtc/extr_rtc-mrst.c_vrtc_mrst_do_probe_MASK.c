#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int irq; struct device* dev; TYPE_1__* rtc; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 unsigned char RTC_24H ; 
 int RTC_AIE ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 unsigned char RTC_DM_BINARY ; 
 int RTC_PIE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,TYPE_2__*) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct resource* FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 TYPE_2__ mrst_rtc ; 
 int /*<<< orphan*/  mrst_rtc_irq ; 
 int /*<<< orphan*/  mrst_rtc_ops ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct device *dev, struct resource *iomem,
			      int rtc_irq)
{
	int retval = 0;
	unsigned char rtc_control;

	/* There can be only one ... */
	if (mrst_rtc.dev)
		return -EBUSY;

	if (!iomem)
		return -ENODEV;

	iomem = FUNC7(dev, iomem->start, FUNC11(iomem),
					driver_name);
	if (!iomem) {
		FUNC2(dev, "i/o mem already in use.\n");
		return -EBUSY;
	}

	mrst_rtc.irq = rtc_irq;
	mrst_rtc.dev = dev;
	FUNC5(dev, &mrst_rtc);

	mrst_rtc.rtc = FUNC8(dev);
	if (FUNC0(mrst_rtc.rtc))
		return FUNC1(mrst_rtc.rtc);

	mrst_rtc.rtc->ops = &mrst_rtc_ops;

	FUNC10(iomem, FUNC4(&mrst_rtc.rtc->dev));

	FUNC13(&rtc_lock);
	FUNC9(&mrst_rtc, RTC_PIE | RTC_AIE);
	rtc_control = FUNC15(RTC_CONTROL);
	FUNC14(&rtc_lock);

	if (!(rtc_control & RTC_24H) || (rtc_control & (RTC_DM_BINARY)))
		FUNC2(dev, "TODO: support more than 24-hr BCD mode\n");

	if (rtc_irq) {
		retval = FUNC6(dev, rtc_irq, mrst_rtc_irq,
					  0, FUNC4(&mrst_rtc.rtc->dev),
					  mrst_rtc.rtc);
		if (retval < 0) {
			FUNC2(dev, "IRQ %d is already in use, err %d\n",
				rtc_irq, retval);
			goto cleanup0;
		}
	}

	retval = FUNC12(mrst_rtc.rtc);
	if (retval)
		goto cleanup0;

	FUNC2(dev, "initialised\n");
	return 0;

cleanup0:
	mrst_rtc.dev = NULL;
	FUNC3(dev, "rtc-mrst: unable to initialise\n");
	return retval;
}