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
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;
struct bq4802 {int (* read ) (struct bq4802*,int) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  (* write ) (struct bq4802*,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct bq4802* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct bq4802*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bq4802*,int,int) ; 

__attribute__((used)) static int FUNC14(struct device *dev, struct rtc_time *tm)
{
	struct bq4802 *p = FUNC1(dev);
	u8 sec, min, hrs, day, mon, yrs, century, val;
	unsigned long flags;
	unsigned int year;

	year = tm->tm_year + 1900;
	century = year / 100;
	yrs = year % 100;

	mon = tm->tm_mon + 1;   /* tm_mon starts at zero */
	day = tm->tm_mday;
	hrs = tm->tm_hour;
	min = tm->tm_min;
	sec = tm->tm_sec;

	sec = FUNC0(sec);
	min = FUNC0(min);
	hrs = FUNC0(hrs);
	day = FUNC0(day);
	mon = FUNC0(mon);
	yrs = FUNC0(yrs);
	century = FUNC0(century);

	FUNC2(&p->lock, flags);

	val = p->read(p, 0x0e);
	p->write(p, 0x0e, val | 0x08);

	p->write(p, 0x00, sec);
	p->write(p, 0x02, min);
	p->write(p, 0x04, hrs);
	p->write(p, 0x06, day);
	p->write(p, 0x09, mon);
	p->write(p, 0x0a, yrs);
	p->write(p, 0x0f, century);

	p->write(p, 0x0e, val);

	FUNC3(&p->lock, flags);

	return 0;
}