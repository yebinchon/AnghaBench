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
struct rtc_time {int tm_hour; void* tm_year; void* tm_mon; void* tm_wday; void* tm_mday; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct abeoz9_rtc_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int ABEOZ9_HOURS_PM ; 
 size_t ABEOZ9_REG_DAYS ; 
 size_t ABEOZ9_REG_HOURS ; 
 size_t ABEOZ9_REG_MIN ; 
 size_t ABEOZ9_REG_MONTHS ; 
 size_t ABEOZ9_REG_SEC ; 
 size_t ABEOZ9_REG_WEEKDAYS ; 
 size_t ABEOZ9_REG_YEARS ; 
 int ABEOZ9_SEC_LEN ; 
 int FUNC0 (struct device*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct abeoz9_rtc_data* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,int*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct abeoz9_rtc_data *data = FUNC3(dev);
	u8 regs[ABEOZ9_SEC_LEN];
	int ret;

	ret = FUNC0(dev);
	if (ret)
		return ret;

	ret = FUNC4(data->regmap, ABEOZ9_REG_SEC,
			       regs,
			       sizeof(regs));
	if (ret) {
		FUNC2(dev, "reading RTC time failed (%d)\n", ret);
		return ret;
	}

	tm->tm_sec = FUNC1(regs[ABEOZ9_REG_SEC - ABEOZ9_REG_SEC] & 0x7F);
	tm->tm_min = FUNC1(regs[ABEOZ9_REG_MIN - ABEOZ9_REG_SEC] & 0x7F);

	if (regs[ABEOZ9_REG_HOURS - ABEOZ9_REG_SEC] & ABEOZ9_HOURS_PM) {
		tm->tm_hour =
			FUNC1(regs[ABEOZ9_REG_HOURS - ABEOZ9_REG_SEC] & 0x1f);
		if (regs[ABEOZ9_REG_HOURS - ABEOZ9_REG_SEC] & ABEOZ9_HOURS_PM)
			tm->tm_hour += 12;
	} else {
		tm->tm_hour = FUNC1(regs[ABEOZ9_REG_HOURS - ABEOZ9_REG_SEC]);
	}

	tm->tm_mday = FUNC1(regs[ABEOZ9_REG_DAYS - ABEOZ9_REG_SEC]);
	tm->tm_wday = FUNC1(regs[ABEOZ9_REG_WEEKDAYS - ABEOZ9_REG_SEC]);
	tm->tm_mon  = FUNC1(regs[ABEOZ9_REG_MONTHS - ABEOZ9_REG_SEC]) - 1;
	tm->tm_year = FUNC1(regs[ABEOZ9_REG_YEARS - ABEOZ9_REG_SEC]) + 100;

	return ret;
}