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
struct spi_device {int dummy; } ;
struct rtc_time {scalar_t__ tm_wday; void* tm_year; scalar_t__ tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int M41T94_BIT_CB ; 
 int M41T94_BIT_CEB ; 
 int M41T94_BIT_HALT ; 
 int M41T94_BIT_STOP ; 
 int M41T94_REG_DAY ; 
 int M41T94_REG_HOURS ; 
 int M41T94_REG_HT ; 
 int M41T94_REG_MINUTES ; 
 int M41T94_REG_MONTH ; 
 int M41T94_REG_SECONDS ; 
 int M41T94_REG_WDAY ; 
 int M41T94_REG_YEAR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,void*,void*,void*,void*,scalar_t__,void*,scalar_t__) ; 
 int FUNC2 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int*,int) ; 
 struct spi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct spi_device *spi = FUNC4(dev);
	u8 buf[2];
	int ret, hour;

	/* clear halt update bit */
	ret = FUNC2(spi, M41T94_REG_HT);
	if (ret < 0)
		return ret;
	if (ret & M41T94_BIT_HALT) {
		buf[0] = 0x80 | M41T94_REG_HT;
		buf[1] = ret & ~M41T94_BIT_HALT;
		FUNC3(spi, buf, 2);
	}

	/* clear stop bit */
	ret = FUNC2(spi, M41T94_REG_SECONDS);
	if (ret < 0)
		return ret;
	if (ret & M41T94_BIT_STOP) {
		buf[0] = 0x80 | M41T94_REG_SECONDS;
		buf[1] = ret & ~M41T94_BIT_STOP;
		FUNC3(spi, buf, 2);
	}

	tm->tm_sec  = FUNC0(FUNC2(spi, M41T94_REG_SECONDS));
	tm->tm_min  = FUNC0(FUNC2(spi, M41T94_REG_MINUTES));
	hour = FUNC2(spi, M41T94_REG_HOURS);
	tm->tm_hour = FUNC0(hour & 0x3f);
	tm->tm_wday = FUNC0(FUNC2(spi, M41T94_REG_WDAY)) - 1;
	tm->tm_mday = FUNC0(FUNC2(spi, M41T94_REG_DAY));
	tm->tm_mon  = FUNC0(FUNC2(spi, M41T94_REG_MONTH)) - 1;
	tm->tm_year = FUNC0(FUNC2(spi, M41T94_REG_YEAR));
	if ((hour & M41T94_BIT_CB) || !(hour & M41T94_BIT_CEB))
		tm->tm_year += 100;

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"read", tm->tm_sec, tm->tm_min,
		tm->tm_hour, tm->tm_mday,
		tm->tm_mon, tm->tm_year, tm->tm_wday);

	return 0;
}