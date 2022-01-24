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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; int tm_mon; int tm_year; } ;
struct rp5c01_priv {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RP5C01_10_DAY ; 
 int /*<<< orphan*/  RP5C01_10_HOUR ; 
 int /*<<< orphan*/  RP5C01_10_MINUTE ; 
 int /*<<< orphan*/  RP5C01_10_MONTH ; 
 int /*<<< orphan*/  RP5C01_10_SECOND ; 
 int /*<<< orphan*/  RP5C01_10_YEAR ; 
 int /*<<< orphan*/  RP5C01_1_DAY ; 
 int /*<<< orphan*/  RP5C01_1_HOUR ; 
 int /*<<< orphan*/  RP5C01_1_MINUTE ; 
 int /*<<< orphan*/  RP5C01_1_MONTH ; 
 int /*<<< orphan*/  RP5C01_1_SECOND ; 
 int /*<<< orphan*/  RP5C01_1_YEAR ; 
 int /*<<< orphan*/  RP5C01_DAY_OF_WEEK ; 
 struct rp5c01_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rp5c01_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rp5c01_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rp5c01_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct rp5c01_priv *priv = FUNC0(dev);

	FUNC4(&priv->lock);
	FUNC1(priv);

	FUNC3(priv, tm->tm_sec / 10, RP5C01_10_SECOND);
	FUNC3(priv, tm->tm_sec % 10, RP5C01_1_SECOND);
	FUNC3(priv, tm->tm_min / 10, RP5C01_10_MINUTE);
	FUNC3(priv, tm->tm_min % 10, RP5C01_1_MINUTE);
	FUNC3(priv, tm->tm_hour / 10, RP5C01_10_HOUR);
	FUNC3(priv, tm->tm_hour % 10, RP5C01_1_HOUR);
	FUNC3(priv, tm->tm_mday / 10, RP5C01_10_DAY);
	FUNC3(priv, tm->tm_mday % 10, RP5C01_1_DAY);
	if (tm->tm_wday != -1)
		FUNC3(priv, tm->tm_wday, RP5C01_DAY_OF_WEEK);
	FUNC3(priv, (tm->tm_mon + 1) / 10, RP5C01_10_MONTH);
	FUNC3(priv, (tm->tm_mon + 1) % 10, RP5C01_1_MONTH);
	if (tm->tm_year >= 100)
		tm->tm_year -= 100;
	FUNC3(priv, tm->tm_year / 10, RP5C01_10_YEAR);
	FUNC3(priv, tm->tm_year % 10, RP5C01_1_YEAR);

	FUNC2(priv);
	FUNC5(&priv->lock);
	return 0;
}