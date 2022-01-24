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
struct rtc_time {int tm_year; void* tm_sec; void* tm_min; void* tm_hour; void* tm_wday; void* tm_mday; scalar_t__ tm_mon; } ;
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {scalar_t__ type; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ M48T59RTC_TYPE_M48T59 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_CNTL ; 
 int /*<<< orphan*/  M48T59_CNTL_READ ; 
 int /*<<< orphan*/  M48T59_HOUR ; 
 int /*<<< orphan*/  M48T59_MDAY ; 
 int /*<<< orphan*/  M48T59_MIN ; 
 int /*<<< orphan*/  M48T59_MONTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_SEC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_WDAY ; 
 int M48T59_WDAY_CB ; 
 int M48T59_WDAY_CEB ; 
 int /*<<< orphan*/  M48T59_YEAR ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct m48t59_private* FUNC5 (struct device*) ; 
 struct m48t59_plat_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_time *tm)
{
	struct m48t59_plat_data *pdata = FUNC6(dev);
	struct m48t59_private *m48t59 = FUNC5(dev);
	unsigned long flags;
	u8 val;

	FUNC7(&m48t59->lock, flags);
	/* Issue the READ command */
	FUNC2(M48T59_CNTL_READ, M48T59_CNTL);

	tm->tm_year	= FUNC3(FUNC1(M48T59_YEAR));
	/* tm_mon is 0-11 */
	tm->tm_mon	= FUNC3(FUNC1(M48T59_MONTH)) - 1;
	tm->tm_mday	= FUNC3(FUNC1(M48T59_MDAY));

	val = FUNC1(M48T59_WDAY);
	if ((pdata->type == M48T59RTC_TYPE_M48T59) &&
	    (val & M48T59_WDAY_CEB) && (val & M48T59_WDAY_CB)) {
		FUNC4(dev, "Century bit is enabled\n");
		tm->tm_year += 100;	/* one century */
	}
#ifdef CONFIG_SPARC
	/* Sun SPARC machines count years since 1968 */
	tm->tm_year += 68;
#endif

	tm->tm_wday	= FUNC3(val & 0x07);
	tm->tm_hour	= FUNC3(FUNC1(M48T59_HOUR) & 0x3F);
	tm->tm_min	= FUNC3(FUNC1(M48T59_MIN) & 0x7F);
	tm->tm_sec	= FUNC3(FUNC1(M48T59_SEC) & 0x7F);

	/* Clear the READ bit */
	FUNC0(M48T59_CNTL_READ, M48T59_CNTL);
	FUNC8(&m48t59->lock, flags);

	FUNC4(dev, "RTC read time %ptR\n", tm);
	return 0;
}