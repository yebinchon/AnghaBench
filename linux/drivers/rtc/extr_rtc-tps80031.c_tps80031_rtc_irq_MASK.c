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
struct tps80031_rtc {int /*<<< orphan*/  rtc; } ;
struct device {int dummy; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int FUNC0 (struct device*,struct tps80031_rtc*) ; 
 struct tps80031_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct device *dev = data;
	struct tps80031_rtc *rtc = FUNC1(dev);
	int ret;

	ret = FUNC0(dev, rtc);
	if (ret < 0)
		return ret;

	FUNC2(rtc->rtc, 1, RTC_IRQF | RTC_AF);
	return IRQ_HANDLED;
}