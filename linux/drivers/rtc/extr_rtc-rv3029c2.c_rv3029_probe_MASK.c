#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rv3029_data {int irq; int /*<<< orphan*/  rtc; struct device* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  alarm_irq_enable; int /*<<< orphan*/  set_alarm; int /*<<< orphan*/  read_alarm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct rv3029_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct rv3029_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rv3029_alarm_irq_enable ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rv3029_handle_irq ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char const*) ; 
 int /*<<< orphan*/  rv3029_read_alarm ; 
 TYPE_1__ rv3029_rtc_ops ; 
 int /*<<< orphan*/  rv3029_set_alarm ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, struct regmap *regmap, int irq,
			const char *name)
{
	struct rv3029_data *rv3029;
	int rc = 0;
	u8 buf[1];

	rv3029 = FUNC5(dev, sizeof(*rv3029), GFP_KERNEL);
	if (!rv3029)
		return -ENOMEM;

	rv3029->regmap = regmap;
	rv3029->irq = irq;
	rv3029->dev = dev;
	FUNC3(dev, rv3029);

	rc = FUNC8(dev, buf);
	if (rc < 0) {
		FUNC2(dev, "reading status failed\n");
		return rc;
	}

	FUNC10(dev);
	FUNC9(dev, name);

	rv3029->rtc = FUNC7(dev, name, &rv3029_rtc_ops,
					       THIS_MODULE);
	if (FUNC0(rv3029->rtc)) {
		FUNC2(dev, "unable to register the class device\n");
		return FUNC1(rv3029->rtc);
	}

	if (rv3029->irq > 0) {
		rc = FUNC6(dev, rv3029->irq,
					       NULL, rv3029_handle_irq,
					       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					       "rv3029", dev);
		if (rc) {
			FUNC4(dev, "unable to request IRQ, alarms disabled\n");
			rv3029->irq = 0;
		} else {
			rv3029_rtc_ops.read_alarm = rv3029_read_alarm;
			rv3029_rtc_ops.set_alarm = rv3029_set_alarm;
			rv3029_rtc_ops.alarm_irq_enable = rv3029_alarm_irq_enable;
		}
	}

	return 0;
}