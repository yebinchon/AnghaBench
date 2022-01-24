#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rv3029_data {TYPE_1__* rtc; } ;
struct mutex {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long RTC_AF ; 
 int /*<<< orphan*/  RV3029_IRQ_CTRL ; 
 int RV3029_IRQ_CTRL_AIE ; 
 int /*<<< orphan*/  RV3029_IRQ_FLAGS ; 
 int RV3029_IRQ_FLAGS_AF ; 
 struct rv3029_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,unsigned long) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct device *dev = dev_id;
	struct rv3029_data *rv3029 = FUNC0(dev);
	struct mutex *lock = &rv3029->rtc->ops_lock;
	unsigned long events = 0;
	u8 flags, controls;
	int ret;

	FUNC2(lock);

	ret = FUNC5(dev, RV3029_IRQ_CTRL, &controls, 1);
	if (ret) {
		FUNC1(dev, "Read IRQ Control Register error %d\n", ret);
		FUNC3(lock);
		return IRQ_NONE;
	}

	ret = FUNC5(dev, RV3029_IRQ_FLAGS, &flags, 1);
	if (ret) {
		FUNC1(dev, "Read IRQ Flags Register error %d\n", ret);
		FUNC3(lock);
		return IRQ_NONE;
	}

	if (flags & RV3029_IRQ_FLAGS_AF) {
		flags &= ~RV3029_IRQ_FLAGS_AF;
		controls &= ~RV3029_IRQ_CTRL_AIE;
		events |= RTC_AF;
	}

	if (events) {
		FUNC4(rv3029->rtc, 1, events);
		FUNC6(dev, RV3029_IRQ_FLAGS, &flags, 1);
		FUNC6(dev, RV3029_IRQ_CTRL, &controls, 1);
	}
	FUNC3(lock);

	return IRQ_HANDLED;
}