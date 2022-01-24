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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int M41T93_FLAG_OF ; 
 int M41T93_FLAG_ST ; 
 size_t M41T93_REG_CENT_HOUR ; 
 size_t M41T93_REG_DAY ; 
 size_t M41T93_REG_FLAGS ; 
 size_t M41T93_REG_MIN ; 
 size_t M41T93_REG_MON ; 
 size_t M41T93_REG_SSEC ; 
 size_t M41T93_REG_ST_SEC ; 
 size_t M41T93_REG_WDAY ; 
 size_t M41T93_REG_YEAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,size_t,int) ; 
 int FUNC4 (struct spi_device*,size_t) ; 
 int FUNC5 (struct spi_device*,int*,int) ; 
 struct spi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct spi_device *spi = FUNC6(dev);
	int tmp;
	u8 buf[9] = {0x80};        /* write cmd + 8 data bytes */
	u8 * const data = &buf[1]; /* ptr to first data byte */

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"write", tm->tm_sec, tm->tm_min,
		tm->tm_hour, tm->tm_mday,
		tm->tm_mon, tm->tm_year, tm->tm_wday);

	if (tm->tm_year < 100) {
		FUNC2(&spi->dev, "unsupported date (before 2000-01-01).\n");
		return -EINVAL;
	}

	tmp = FUNC4(spi, M41T93_REG_FLAGS);
	if (tmp < 0)
		return tmp;

	if (tmp & M41T93_FLAG_OF) {
		FUNC2(&spi->dev, "OF bit is set, resetting.\n");
		FUNC3(spi, M41T93_REG_FLAGS, tmp & ~M41T93_FLAG_OF);

		tmp = FUNC4(spi, M41T93_REG_FLAGS);
		if (tmp < 0) {
			return tmp;
		} else if (tmp & M41T93_FLAG_OF) {
			/* OF cannot be immediately reset: oscillator has to be
			 * restarted. */
			u8 reset_osc = buf[M41T93_REG_ST_SEC] | M41T93_FLAG_ST;

			FUNC2(&spi->dev,
				 "OF bit is still set, kickstarting clock.\n");
			FUNC3(spi, M41T93_REG_ST_SEC, reset_osc);
			reset_osc &= ~M41T93_FLAG_ST;
			FUNC3(spi, M41T93_REG_ST_SEC, reset_osc);
		}
	}

	data[M41T93_REG_SSEC]		= 0;
	data[M41T93_REG_ST_SEC]		= FUNC0(tm->tm_sec);
	data[M41T93_REG_MIN]		= FUNC0(tm->tm_min);
	data[M41T93_REG_CENT_HOUR]	= FUNC0(tm->tm_hour) |
						((tm->tm_year/100-1) << 6);
	data[M41T93_REG_DAY]		= FUNC0(tm->tm_mday);
	data[M41T93_REG_WDAY]		= FUNC0(tm->tm_wday + 1);
	data[M41T93_REG_MON]		= FUNC0(tm->tm_mon + 1);
	data[M41T93_REG_YEAR]		= FUNC0(tm->tm_year % 100);

	return FUNC5(spi, buf, sizeof(buf));
}