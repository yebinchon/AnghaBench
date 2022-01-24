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
struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_RTC_CTRL_AF_IRQ ; 
 struct jz4740_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct jz4740_rtc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int enable)
{
	struct jz4740_rtc *rtc = FUNC0(dev);
	return FUNC1(rtc, JZ_RTC_CTRL_AF_IRQ, enable);
}