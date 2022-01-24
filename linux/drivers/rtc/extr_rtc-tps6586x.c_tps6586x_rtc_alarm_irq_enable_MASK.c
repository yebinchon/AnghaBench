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
struct tps6586x_rtc {int irq_en; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tps6586x_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
			 unsigned int enabled)
{
	struct tps6586x_rtc *rtc = FUNC0(dev);

	if (enabled && !rtc->irq_en) {
		FUNC2(rtc->irq);
		rtc->irq_en = true;
	} else if (!enabled && rtc->irq_en)  {
		FUNC1(rtc->irq);
		rtc->irq_en = false;
	}
	return 0;
}