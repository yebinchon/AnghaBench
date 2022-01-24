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
struct pcf2123_data {TYPE_1__* rtc; int /*<<< orphan*/  map; } ;
struct mutex {int dummy; } ;
typedef  int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;

/* Variables and functions */
 unsigned int CTRL2_AF ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  PCF2123_REG_CTRL2 ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 struct pcf2123_data* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct pcf2123_data *pcf2123 = FUNC0(dev);
	struct mutex *lock = &pcf2123->rtc->ops_lock;
	unsigned int val = 0;
	int ret = IRQ_NONE;

	FUNC1(lock);
	FUNC3(pcf2123->map, PCF2123_REG_CTRL2, &val);

	/* Alarm? */
	if (val & CTRL2_AF) {
		ret = IRQ_HANDLED;

		/* Clear alarm flag */
		FUNC4(pcf2123->map, PCF2123_REG_CTRL2, CTRL2_AF, 0);

		FUNC5(pcf2123->rtc, 1, RTC_IRQF | RTC_AF);
	}

	FUNC2(lock);

	return ret;
}