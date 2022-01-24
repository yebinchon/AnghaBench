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
struct rtc_time {int tm_year; void* tm_sec; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct m48t59_private {scalar_t__ irq; int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  M48T59_ALARM_DATE ; 
 int /*<<< orphan*/  M48T59_ALARM_HOUR ; 
 int /*<<< orphan*/  M48T59_ALARM_MIN ; 
 int /*<<< orphan*/  M48T59_ALARM_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_CNTL ; 
 int /*<<< orphan*/  M48T59_CNTL_READ ; 
 int /*<<< orphan*/  M48T59_MONTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_WDAY ; 
 int M48T59_WDAY_CB ; 
 int M48T59_WDAY_CEB ; 
 int /*<<< orphan*/  M48T59_YEAR ; 
 scalar_t__ NO_IRQ ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,struct rtc_time*) ; 
 struct m48t59_private* FUNC5 (struct device*) ; 
 struct m48t59_plat_data* FUNC6 (struct device*) ; 
 int FUNC7 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct m48t59_plat_data *pdata = FUNC6(dev);
	struct m48t59_private *m48t59 = FUNC5(dev);
	struct rtc_time *tm = &alrm->time;
	unsigned long flags;
	u8 val;

	/* If no irq, we don't support ALARM */
	if (m48t59->irq == NO_IRQ)
		return -EIO;

	FUNC8(&m48t59->lock, flags);
	/* Issue the READ command */
	FUNC2(M48T59_CNTL_READ, M48T59_CNTL);

	tm->tm_year = FUNC3(FUNC1(M48T59_YEAR));
#ifdef CONFIG_SPARC
	/* Sun SPARC machines count years since 1968 */
	tm->tm_year += 68;
#endif
	/* tm_mon is 0-11 */
	tm->tm_mon = FUNC3(FUNC1(M48T59_MONTH)) - 1;

	val = FUNC1(M48T59_WDAY);
	if ((val & M48T59_WDAY_CEB) && (val & M48T59_WDAY_CB))
		tm->tm_year += 100;	/* one century */

	tm->tm_mday = FUNC3(FUNC1(M48T59_ALARM_DATE));
	tm->tm_hour = FUNC3(FUNC1(M48T59_ALARM_HOUR));
	tm->tm_min = FUNC3(FUNC1(M48T59_ALARM_MIN));
	tm->tm_sec = FUNC3(FUNC1(M48T59_ALARM_SEC));

	/* Clear the READ bit */
	FUNC0(M48T59_CNTL_READ, M48T59_CNTL);
	FUNC9(&m48t59->lock, flags);

	FUNC4(dev, "RTC read alarm time %ptR\n", tm);
	return FUNC7(tm);
}