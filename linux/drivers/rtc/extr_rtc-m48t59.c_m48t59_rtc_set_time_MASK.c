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
typedef  int u8 ;
struct rtc_time {int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_wday; int /*<<< orphan*/  tm_mon; } ;
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {scalar_t__ type; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ M48T59RTC_TYPE_M48T59 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_CNTL ; 
 int /*<<< orphan*/  M48T59_CNTL_WRITE ; 
 int /*<<< orphan*/  M48T59_HOUR ; 
 int /*<<< orphan*/  M48T59_MDAY ; 
 int /*<<< orphan*/  M48T59_MIN ; 
 int /*<<< orphan*/  M48T59_MONTH ; 
 int /*<<< orphan*/  M48T59_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_WDAY ; 
 int M48T59_WDAY_CB ; 
 int M48T59_WDAY_CEB ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_YEAR ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 struct m48t59_private* FUNC5 (struct device*) ; 
 struct m48t59_plat_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_time *tm)
{
	struct m48t59_plat_data *pdata = FUNC6(dev);
	struct m48t59_private *m48t59 = FUNC5(dev);
	unsigned long flags;
	u8 val = 0;
	int year = tm->tm_year;

#ifdef CONFIG_SPARC
	/* Sun SPARC machines count years since 1968 */
	year -= 68;
#endif

	FUNC4(dev, "RTC set time %04d-%02d-%02d %02d/%02d/%02d\n",
		year + 1900, tm->tm_mon, tm->tm_mday,
		tm->tm_hour, tm->tm_min, tm->tm_sec);

	if (year < 0)
		return -EINVAL;

	FUNC7(&m48t59->lock, flags);
	/* Issue the WRITE command */
	FUNC1(M48T59_CNTL_WRITE, M48T59_CNTL);

	FUNC2((FUNC3(tm->tm_sec) & 0x7F), M48T59_SEC);
	FUNC2((FUNC3(tm->tm_min) & 0x7F), M48T59_MIN);
	FUNC2((FUNC3(tm->tm_hour) & 0x3F), M48T59_HOUR);
	FUNC2((FUNC3(tm->tm_mday) & 0x3F), M48T59_MDAY);
	/* tm_mon is 0-11 */
	FUNC2((FUNC3(tm->tm_mon + 1) & 0x1F), M48T59_MONTH);
	FUNC2(FUNC3(year % 100), M48T59_YEAR);

	if (pdata->type == M48T59RTC_TYPE_M48T59 && (year / 100))
		val = (M48T59_WDAY_CEB | M48T59_WDAY_CB);
	val |= (FUNC3(tm->tm_wday) & 0x07);
	FUNC2(val, M48T59_WDAY);

	/* Clear the WRITE bit */
	FUNC0(M48T59_CNTL_WRITE, M48T59_CNTL);
	FUNC8(&m48t59->lock, flags);
	return 0;
}