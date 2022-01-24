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
struct TYPE_2__ {void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CTRL_B ; 
 int RTC_CTRL_B_AIE ; 
 int /*<<< orphan*/  RTC_CTRL_C ; 
 int RTC_CTRL_C_AF ; 
 int /*<<< orphan*/  RTC_HRS_24_BCD_MASK ; 
 int /*<<< orphan*/  RTC_HRS_24_BIN_MASK ; 
 int /*<<< orphan*/  RTC_HRS_ALARM ; 
 int /*<<< orphan*/  RTC_MDAY_ALARM ; 
 int /*<<< orphan*/  RTC_MDAY_BCD_MASK ; 
 int /*<<< orphan*/  RTC_MDAY_BIN_MASK ; 
 int /*<<< orphan*/  RTC_MINS_ALARM ; 
 int /*<<< orphan*/  RTC_MINS_BCD_MASK ; 
 int /*<<< orphan*/  RTC_MINS_BIN_MASK ; 
 int /*<<< orphan*/  RTC_SECS_ALARM ; 
 int /*<<< orphan*/  RTC_SECS_BCD_MASK ; 
 int /*<<< orphan*/  RTC_SECS_BIN_MASK ; 
 struct ds1685_priv* FUNC0 (struct device*) ; 
 void* FUNC1 (struct ds1685_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1685_priv*) ; 
 int FUNC3 (struct ds1685_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ds1685_priv*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct ds1685_priv *rtc = FUNC0(dev);
	u8 seconds, minutes, hours, mday, ctrlb, ctrlc;
	int ret;

	/* Fetch the alarm info from the RTC alarm registers. */
	FUNC2(rtc);
	seconds	= rtc->read(rtc, RTC_SECS_ALARM);
	minutes	= rtc->read(rtc, RTC_MINS_ALARM);
	hours	= rtc->read(rtc, RTC_HRS_ALARM);
	mday	= rtc->read(rtc, RTC_MDAY_ALARM);
	ctrlb	= rtc->read(rtc, RTC_CTRL_B);
	ctrlc	= rtc->read(rtc, RTC_CTRL_C);
	FUNC4(rtc);

	/* Check the month date for validity. */
	ret = FUNC3(rtc, mday);
	if (ret)
		return ret;

	/*
	 * Check the three alarm bytes.
	 *
	 * The Linux RTC system doesn't support the "don't care" capability
	 * of this RTC chip.  We check for it anyways in case support is
	 * added in the future and only assign when we care.
	 */
	if (FUNC5(seconds < 0xc0))
		alrm->time.tm_sec = FUNC1(rtc, seconds,
						       RTC_SECS_BCD_MASK,
						       RTC_SECS_BIN_MASK);

	if (FUNC5(minutes < 0xc0))
		alrm->time.tm_min = FUNC1(rtc, minutes,
						       RTC_MINS_BCD_MASK,
						       RTC_MINS_BIN_MASK);

	if (FUNC5(hours < 0xc0))
		alrm->time.tm_hour = FUNC1(rtc, hours,
							RTC_HRS_24_BCD_MASK,
							RTC_HRS_24_BIN_MASK);

	/* Write the data to rtc_wkalrm. */
	alrm->time.tm_mday = FUNC1(rtc, mday, RTC_MDAY_BCD_MASK,
						RTC_MDAY_BIN_MASK);
	alrm->enabled = !!(ctrlb & RTC_CTRL_B_AIE);
	alrm->pending = !!(ctrlc & RTC_CTRL_C_AF);

	return 0;
}