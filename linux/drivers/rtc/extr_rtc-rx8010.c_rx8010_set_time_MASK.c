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
typedef  int /*<<< orphan*/  u8 ;
struct rx8010_data {int ctrlreg; int /*<<< orphan*/  client; } ;
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RX8010_CTRL ; 
 int RX8010_CTRL_STOP ; 
 int /*<<< orphan*/  RX8010_FLAG ; 
 int RX8010_FLAG_VLF ; 
 size_t RX8010_HOUR ; 
 size_t RX8010_MDAY ; 
 size_t RX8010_MIN ; 
 size_t RX8010_MONTH ; 
 size_t RX8010_SEC ; 
 size_t RX8010_WDAY ; 
 size_t RX8010_YEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rx8010_data* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *dt)
{
	struct rx8010_data *rx8010 = FUNC1(dev);
	u8 date[7];
	int ctrl, flagreg;
	int ret;

	if ((dt->tm_year < 100) || (dt->tm_year > 199))
		return -EINVAL;

	/* set STOP bit before changing clock/calendar */
	ctrl = FUNC2(rx8010->client, RX8010_CTRL);
	if (ctrl < 0)
		return ctrl;
	rx8010->ctrlreg = ctrl | RX8010_CTRL_STOP;
	ret = FUNC3(rx8010->client, RX8010_CTRL,
					rx8010->ctrlreg);
	if (ret < 0)
		return ret;

	date[RX8010_SEC - RX8010_SEC] = FUNC0(dt->tm_sec);
	date[RX8010_MIN - RX8010_SEC] = FUNC0(dt->tm_min);
	date[RX8010_HOUR - RX8010_SEC] = FUNC0(dt->tm_hour);
	date[RX8010_MDAY - RX8010_SEC] = FUNC0(dt->tm_mday);
	date[RX8010_MONTH - RX8010_SEC] = FUNC0(dt->tm_mon + 1);
	date[RX8010_YEAR - RX8010_SEC] = FUNC0(dt->tm_year - 100);
	date[RX8010_WDAY - RX8010_SEC] = FUNC0(1 << dt->tm_wday);

	ret = FUNC4(rx8010->client,
					     RX8010_SEC, 7, date);
	if (ret < 0)
		return ret;

	/* clear STOP bit after changing clock/calendar */
	ctrl = FUNC2(rx8010->client, RX8010_CTRL);
	if (ctrl < 0)
		return ctrl;
	rx8010->ctrlreg = ctrl & ~RX8010_CTRL_STOP;
	ret = FUNC3(rx8010->client, RX8010_CTRL,
					rx8010->ctrlreg);
	if (ret < 0)
		return ret;

	flagreg = FUNC2(rx8010->client, RX8010_FLAG);
	if (flagreg < 0) {
		return flagreg;
	}

	if (flagreg & RX8010_FLAG_VLF)
		ret = FUNC3(rx8010->client, RX8010_FLAG,
						flagreg & ~RX8010_FLAG_VLF);

	return 0;
}