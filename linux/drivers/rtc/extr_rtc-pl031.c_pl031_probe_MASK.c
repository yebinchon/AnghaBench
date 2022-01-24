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
struct rtc_class_ops {int /*<<< orphan*/ * alarm_irq_enable; int /*<<< orphan*/ * set_alarm; int /*<<< orphan*/ * read_alarm; } ;
struct pl031_vendor_data {int /*<<< orphan*/  irqflags; scalar_t__ st_weekday; scalar_t__ clockwatch; int /*<<< orphan*/  ops; } ;
struct pl031_local {TYPE_1__* rtc; scalar_t__ base; struct pl031_vendor_data* vendor; } ;
struct amba_id {struct pl031_vendor_data* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  start; } ;
struct amba_device {scalar_t__* irq; int /*<<< orphan*/  dev; TYPE_2__ res; } ;
struct TYPE_6__ {struct rtc_class_ops* ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ RTC_CR ; 
 unsigned long RTC_CR_CWEN ; 
 unsigned long RTC_CR_EN ; 
 scalar_t__ RTC_DR ; 
 scalar_t__ RTC_LR ; 
 unsigned long RTC_MDAY_MASK ; 
 unsigned long RTC_MON_MASK ; 
 unsigned long RTC_WDAY_MASK ; 
 int RTC_WDAY_SHIFT ; 
 scalar_t__ RTC_YDR ; 
 scalar_t__ RTC_YLR ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amba_device*) ; 
 int FUNC4 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amba_device*,struct pl031_local*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtc_class_ops* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct pl031_local* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pl031_interrupt ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pl031_local*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct amba_device *adev, const struct amba_id *id)
{
	int ret;
	struct pl031_local *ldata;
	struct pl031_vendor_data *vendor = id->data;
	struct rtc_class_ops *ops;
	unsigned long time, data;

	ret = FUNC4(adev, NULL);
	if (ret)
		goto err_req;

	ldata = FUNC12(&adev->dev, sizeof(struct pl031_local),
			     GFP_KERNEL);
	ops = FUNC11(&adev->dev, &vendor->ops, sizeof(vendor->ops),
			   GFP_KERNEL);
	if (!ldata || !ops) {
		ret = -ENOMEM;
		goto out;
	}

	ldata->vendor = vendor;
	ldata->base = FUNC10(&adev->dev, adev->res.start,
				   FUNC16(&adev->res));
	if (!ldata->base) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC6(adev, ldata);

	FUNC7(&adev->dev, "designer ID = 0x%02x\n", FUNC2(adev));
	FUNC7(&adev->dev, "revision = 0x%01x\n", FUNC5(adev));

	data = FUNC14(ldata->base + RTC_CR);
	/* Enable the clockwatch on ST Variants */
	if (vendor->clockwatch)
		data |= RTC_CR_CWEN;
	else
		data |= RTC_CR_EN;
	FUNC18(data, ldata->base + RTC_CR);

	/*
	 * On ST PL031 variants, the RTC reset value does not provide correct
	 * weekday for 2000-01-01. Correct the erroneous sunday to saturday.
	 */
	if (vendor->st_weekday) {
		if (FUNC14(ldata->base + RTC_YDR) == 0x2000) {
			time = FUNC14(ldata->base + RTC_DR);
			if ((time &
			     (RTC_MON_MASK | RTC_MDAY_MASK | RTC_WDAY_MASK))
			    == 0x02120000) {
				time = time | (0x7 << RTC_WDAY_SHIFT);
				FUNC18(0x2000, ldata->base + RTC_YLR);
				FUNC18(time, ldata->base + RTC_LR);
			}
		}
	}

	if (!adev->irq[0]) {
		/* When there's no interrupt, no point in exposing the alarm */
		ops->read_alarm = NULL;
		ops->set_alarm = NULL;
		ops->alarm_irq_enable = NULL;
	}

	FUNC9(&adev->dev, true);
	ldata->rtc = FUNC13(&adev->dev);
	if (FUNC0(ldata->rtc))
		return FUNC1(ldata->rtc);

	ldata->rtc->ops = ops;

	ret = FUNC17(ldata->rtc);
	if (ret)
		goto out;

	if (adev->irq[0]) {
		ret = FUNC15(adev->irq[0], pl031_interrupt,
				  vendor->irqflags, "rtc-pl031", ldata);
		if (ret)
			goto out;
		FUNC8(&adev->dev, adev->irq[0]);
	}
	return 0;

out:
	FUNC3(adev);
err_req:

	return ret;
}