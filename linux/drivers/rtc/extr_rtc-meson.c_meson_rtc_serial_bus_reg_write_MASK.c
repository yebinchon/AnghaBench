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
struct meson_rtc {int /*<<< orphan*/  peripheral; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_ADDR0 ; 
 int /*<<< orphan*/  RTC_ADDR0_LINE_SEN ; 
 int /*<<< orphan*/  RTC_ADDR_BITS ; 
 int /*<<< orphan*/  RTC_DATA_BITS ; 
 int FUNC0 (struct meson_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_rtc*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_rtc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int reg,
					  unsigned int data)
{
	struct meson_rtc *rtc = context;
	int ret;

	ret = FUNC0(rtc);
	if (ret)
		return ret;

	FUNC3(rtc->peripheral, RTC_ADDR0, RTC_ADDR0_LINE_SEN,
			   RTC_ADDR0_LINE_SEN);
	FUNC1(rtc, data, RTC_DATA_BITS);
	FUNC1(rtc, reg, RTC_ADDR_BITS);
	FUNC2(rtc, 1);

	return 0;
}