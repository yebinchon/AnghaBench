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
typedef  int u32 ;
struct meson_rtc {int /*<<< orphan*/  dev; int /*<<< orphan*/  reset; int /*<<< orphan*/  peripheral; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  RTC_ADDR0 ; 
 int RTC_ADDR0_LINE_SCLK ; 
 int RTC_ADDR0_LINE_SDI ; 
 int RTC_ADDR0_LINE_SEN ; 
 int /*<<< orphan*/  RTC_ADDR1 ; 
 int RTC_ADDR1_S_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct meson_rtc *rtc)
{
	int ret, retries = 3;
	u32 val;

	/* prepare bus for transfers, set all lines low */
	val = RTC_ADDR0_LINE_SDI | RTC_ADDR0_LINE_SEN | RTC_ADDR0_LINE_SCLK;
	FUNC3(rtc->peripheral, RTC_ADDR0, val, 0);

	for (retries = 0; retries < 3; retries++) {
		/* wait for the bus to be ready */
		if (!FUNC2(rtc->peripheral, RTC_ADDR1, val,
					      val & RTC_ADDR1_S_READY, 10,
					      10000))
			return 0;

		FUNC1(rtc->dev, "failed to get bus, resetting RTC\n");

		ret = FUNC4(rtc->reset);
		if (ret)
			return ret;
	}

	FUNC0(rtc->dev, "bus is not ready\n");
	return -ETIMEDOUT;
}