#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {unsigned char tm_sec; unsigned char tm_min; unsigned char tm_hour; unsigned char tm_mday; unsigned char tm_mon; unsigned char tm_year; } ;
struct TYPE_3__ {scalar_t__ revision; } ;
struct TYPE_4__ {scalar_t__ century; TYPE_1__ header; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FADT2_REVISION_ID ; 
 unsigned int RTC_24H ; 
 scalar_t__ RTC_ALWAYS_BCD ; 
 scalar_t__ RTC_CONTROL ; 
 scalar_t__ RTC_DAY_OF_MONTH ; 
 scalar_t__ RTC_DEC_YEAR ; 
 unsigned char RTC_DM_BINARY ; 
 scalar_t__ RTC_HOURS ; 
 scalar_t__ RTC_MINUTES ; 
 scalar_t__ RTC_MONTH ; 
 scalar_t__ RTC_SECONDS ; 
 scalar_t__ RTC_YEAR ; 
 TYPE_2__ acpi_gbl_FADT ; 
 void* FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC6(struct rtc_time *time)
{
	unsigned char ctrl;
	unsigned long flags;
	unsigned char century = 0;

#ifdef CONFIG_MACH_DECSTATION
	unsigned int real_year;
#endif

	/*
	 * read RTC once any update in progress is done. The update
	 * can take just over 2ms. We wait 20ms. There is no need to
	 * to poll-wait (up to 1s - eeccch) for the falling edge of RTC_UIP.
	 * If you need to know *exactly* when a second has started, enable
	 * periodic update complete interrupts, (via ioctl) and then
	 * immediately read /dev/rtc which will block until you get the IRQ.
	 * Once the read clears, read the RTC time (again via ioctl). Easy.
	 */
	if (FUNC2())
		FUNC3(20);

	/*
	 * Only the values that we read from the RTC are set. We leave
	 * tm_wday, tm_yday and tm_isdst untouched. Even though the
	 * RTC has RTC_DAY_OF_WEEK, we ignore it, as it is only updated
	 * by the RTC when initially set to a non-zero value.
	 */
	FUNC4(&rtc_lock, flags);
	time->tm_sec = FUNC0(RTC_SECONDS);
	time->tm_min = FUNC0(RTC_MINUTES);
	time->tm_hour = FUNC0(RTC_HOURS);
	time->tm_mday = FUNC0(RTC_DAY_OF_MONTH);
	time->tm_mon = FUNC0(RTC_MONTH);
	time->tm_year = FUNC0(RTC_YEAR);
#ifdef CONFIG_MACH_DECSTATION
	real_year = CMOS_READ(RTC_DEC_YEAR);
#endif
#ifdef CONFIG_ACPI
	if (acpi_gbl_FADT.header.revision >= FADT2_REVISION_ID &&
	    acpi_gbl_FADT.century)
		century = CMOS_READ(acpi_gbl_FADT.century);
#endif
	ctrl = FUNC0(RTC_CONTROL);
	FUNC5(&rtc_lock, flags);

	if (!(ctrl & RTC_DM_BINARY) || RTC_ALWAYS_BCD)
	{
		time->tm_sec = FUNC1(time->tm_sec);
		time->tm_min = FUNC1(time->tm_min);
		time->tm_hour = FUNC1(time->tm_hour);
		time->tm_mday = FUNC1(time->tm_mday);
		time->tm_mon = FUNC1(time->tm_mon);
		time->tm_year = FUNC1(time->tm_year);
		century = FUNC1(century);
	}

#ifdef CONFIG_MACH_DECSTATION
	time->tm_year += real_year - 72;
#endif

	if (century > 20)
		time->tm_year += (century - 19) * 100;

	/*
	 * Account for differences between how the RTC uses the values
	 * and how they are defined in a struct rtc_time;
	 */
	if (time->tm_year <= 69)
		time->tm_year += 100;

	time->tm_mon--;

	return RTC_24H;
}