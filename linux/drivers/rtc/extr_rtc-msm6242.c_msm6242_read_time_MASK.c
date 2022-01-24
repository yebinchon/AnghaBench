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
struct msm6242_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MSM6242_CF ; 
 int MSM6242_CF_24H ; 
 int MSM6242_DAY1 ; 
 int MSM6242_DAY10 ; 
 int MSM6242_HOUR1 ; 
 int MSM6242_HOUR10 ; 
 int MSM6242_HOUR10_PM ; 
 int MSM6242_MINUTE1 ; 
 int MSM6242_MINUTE10 ; 
 int MSM6242_MONTH1 ; 
 int MSM6242_MONTH10 ; 
 int MSM6242_SECOND1 ; 
 int MSM6242_SECOND10 ; 
 int MSM6242_WEEK ; 
 int MSM6242_YEAR1 ; 
 int MSM6242_YEAR10 ; 
 struct msm6242_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm6242_priv*) ; 
 int FUNC2 (struct msm6242_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm6242_priv*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct msm6242_priv *priv = FUNC0(dev);

	FUNC1(priv);

	tm->tm_sec  = FUNC2(priv, MSM6242_SECOND10) * 10 +
		      FUNC2(priv, MSM6242_SECOND1);
	tm->tm_min  = FUNC2(priv, MSM6242_MINUTE10) * 10 +
		      FUNC2(priv, MSM6242_MINUTE1);
	tm->tm_hour = (FUNC2(priv, MSM6242_HOUR10 & 3)) * 10 +
		      FUNC2(priv, MSM6242_HOUR1);
	tm->tm_mday = FUNC2(priv, MSM6242_DAY10) * 10 +
		      FUNC2(priv, MSM6242_DAY1);
	tm->tm_wday = FUNC2(priv, MSM6242_WEEK);
	tm->tm_mon  = FUNC2(priv, MSM6242_MONTH10) * 10 +
		      FUNC2(priv, MSM6242_MONTH1) - 1;
	tm->tm_year = FUNC2(priv, MSM6242_YEAR10) * 10 +
		      FUNC2(priv, MSM6242_YEAR1);
	if (tm->tm_year <= 69)
		tm->tm_year += 100;

	if (!(FUNC2(priv, MSM6242_CF) & MSM6242_CF_24H)) {
		unsigned int pm = FUNC2(priv, MSM6242_HOUR10) &
				  MSM6242_HOUR10_PM;
		if (!pm && tm->tm_hour == 12)
			tm->tm_hour = 0;
		else if (pm && tm->tm_hour != 12)
			tm->tm_hour += 12;
	}

	FUNC3(priv);

	return 0;
}