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
struct palmas_rtc {int /*<<< orphan*/  rtc; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *context)
{
	struct palmas_rtc *palmas_rtc = context;
	struct device *dev = palmas_rtc->dev;
	int ret;

	ret = FUNC1(dev);
	if (ret < 0) {
		FUNC0(dev, "RTC interrupt clear failed, err = %d\n", ret);
		return IRQ_NONE;
	}

	FUNC2(palmas_rtc->rtc, 1, RTC_IRQF | RTC_AF);
	return IRQ_HANDLED;
}