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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct rtc_time {void* tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int M41T93_FLAG_BL ; 
 int M41T93_FLAG_HT ; 
 int M41T93_FLAG_OF ; 
 int /*<<< orphan*/  M41T93_REG_ALM_HOUR_HT ; 
 size_t M41T93_REG_CENT_HOUR ; 
 size_t M41T93_REG_DAY ; 
 int /*<<< orphan*/  M41T93_REG_FLAGS ; 
 size_t M41T93_REG_MIN ; 
 size_t M41T93_REG_MON ; 
 size_t M41T93_REG_ST_SEC ; 
 size_t M41T93_REG_WDAY ; 
 size_t M41T93_REG_YEAR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct spi_device*,int const*,int,int*,int) ; 
 struct spi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct spi_device *spi = FUNC6(dev);
	const u8 start_addr = 0;
	u8 buf[8];
	int century_after_1900;
	int tmp;
	int ret = 0;

	/* Check status of clock. Two states must be considered:
	   1. halt bit (HT) is set: the clock is running but update of readout
	      registers has been disabled due to power failure. This is normal
	      case after poweron. Time is valid after resetting HT bit.
	   2. oscillator fail bit (OF) is set: time is invalid.
	*/
	tmp = FUNC4(spi, M41T93_REG_ALM_HOUR_HT);
	if (tmp < 0)
		return tmp;

	if (tmp & M41T93_FLAG_HT) {
		FUNC1(&spi->dev, "HT bit is set, reenable clock update.\n");
		FUNC3(spi, M41T93_REG_ALM_HOUR_HT,
			       tmp & ~M41T93_FLAG_HT);
	}

	tmp = FUNC4(spi, M41T93_REG_FLAGS);
	if (tmp < 0)
		return tmp;

	if (tmp & M41T93_FLAG_OF) {
		ret = -EINVAL;
		FUNC2(&spi->dev, "OF bit is set, write time to restart.\n");
	}

	if (tmp & M41T93_FLAG_BL)
		FUNC2(&spi->dev, "BL bit is set, replace battery.\n");

	/* read actual time/date */
	tmp = FUNC5(spi, &start_addr, 1, buf, sizeof(buf));
	if (tmp < 0)
		return tmp;

	tm->tm_sec	= FUNC0(buf[M41T93_REG_ST_SEC]);
	tm->tm_min	= FUNC0(buf[M41T93_REG_MIN]);
	tm->tm_hour	= FUNC0(buf[M41T93_REG_CENT_HOUR] & 0x3f);
	tm->tm_mday	= FUNC0(buf[M41T93_REG_DAY]);
	tm->tm_mon	= FUNC0(buf[M41T93_REG_MON]) - 1;
	tm->tm_wday	= FUNC0(buf[M41T93_REG_WDAY] & 0x0f) - 1;

	century_after_1900 = (buf[M41T93_REG_CENT_HOUR] >> 6) + 1;
	tm->tm_year = FUNC0(buf[M41T93_REG_YEAR]) + century_after_1900 * 100;

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"read", tm->tm_sec, tm->tm_min,
		tm->tm_hour, tm->tm_mday,
		tm->tm_mon, tm->tm_year, tm->tm_wday);

	return ret;
}