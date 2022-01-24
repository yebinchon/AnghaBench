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
struct TYPE_2__ {int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write ) (struct ds1685_priv*,int /*<<< orphan*/ ,int) ;scalar_t__ bcd_mode; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CTRL_B ; 
 int RTC_CTRL_B_AIE ; 
 int RTC_CTRL_B_DM ; 
 int /*<<< orphan*/  RTC_CTRL_C ; 
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
 int /*<<< orphan*/  FUNC1 (struct ds1685_priv*) ; 
 int FUNC2 (struct ds1685_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ds1685_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ds1685_priv*) ; 
 int FUNC5 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct ds1685_priv *rtc = FUNC0(dev);
	u8 ctrlb, seconds, minutes, hours, mday;
	int ret;

	/* Fetch the alarm info and convert to BCD. */
	seconds	= FUNC2(rtc, alrm->time.tm_sec,
				     RTC_SECS_BIN_MASK,
				     RTC_SECS_BCD_MASK);
	minutes	= FUNC2(rtc, alrm->time.tm_min,
				     RTC_MINS_BIN_MASK,
				     RTC_MINS_BCD_MASK);
	hours	= FUNC2(rtc, alrm->time.tm_hour,
				     RTC_HRS_24_BIN_MASK,
				     RTC_HRS_24_BCD_MASK);
	mday	= FUNC2(rtc, alrm->time.tm_mday,
				     RTC_MDAY_BIN_MASK,
				     RTC_MDAY_BCD_MASK);

	/* Check the month date for validity. */
	ret = FUNC3(rtc, mday);
	if (ret)
		return ret;

	/*
	 * Check the three alarm bytes.
	 *
	 * The Linux RTC system doesn't support the "don't care" capability
	 * of this RTC chip because rtc_valid_tm tries to validate every
	 * field, and we only support four fields.  We put the support
	 * here anyways for the future.
	 */
	if (FUNC16(seconds >= 0xc0))
		seconds = 0xff;

	if (FUNC16(minutes >= 0xc0))
		minutes = 0xff;

	if (FUNC16(hours >= 0xc0))
		hours = 0xff;

	alrm->time.tm_mon	= -1;
	alrm->time.tm_year	= -1;
	alrm->time.tm_wday	= -1;
	alrm->time.tm_yday	= -1;
	alrm->time.tm_isdst	= -1;

	/* Disable the alarm interrupt first. */
	FUNC1(rtc);
	ctrlb = rtc->read(rtc, RTC_CTRL_B);
	rtc->write(rtc, RTC_CTRL_B, (ctrlb & ~(RTC_CTRL_B_AIE)));

	/* Read ctrlc to clear RTC_CTRL_C_AF. */
	rtc->read(rtc, RTC_CTRL_C);

	/*
	 * Set the data mode to use and store the time values in the
	 * RTC registers.
	 */
	ctrlb = rtc->read(rtc, RTC_CTRL_B);
	if (rtc->bcd_mode)
		ctrlb &= ~(RTC_CTRL_B_DM);
	else
		ctrlb |= RTC_CTRL_B_DM;
	rtc->write(rtc, RTC_CTRL_B, ctrlb);
	rtc->write(rtc, RTC_SECS_ALARM, seconds);
	rtc->write(rtc, RTC_MINS_ALARM, minutes);
	rtc->write(rtc, RTC_HRS_ALARM, hours);
	rtc->write(rtc, RTC_MDAY_ALARM, mday);

	/* Re-enable the alarm if needed. */
	if (alrm->enabled) {
		ctrlb = rtc->read(rtc, RTC_CTRL_B);
		ctrlb |= RTC_CTRL_B_AIE;
		rtc->write(rtc, RTC_CTRL_B, ctrlb);
	}

	/* Done! */
	FUNC4(rtc);

	return 0;
}