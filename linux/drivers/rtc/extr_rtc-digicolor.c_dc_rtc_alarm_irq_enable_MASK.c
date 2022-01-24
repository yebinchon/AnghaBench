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
struct device {int dummy; } ;
struct dc_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DC_RTC_INTENABLE ; 
 struct dc_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int enabled)
{
	struct dc_rtc *rtc = FUNC0(dev);

	FUNC1(!!enabled, rtc->regs + DC_RTC_INTENABLE);

	return 0;
}