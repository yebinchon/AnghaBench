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
typedef  int /*<<< orphan*/  txbuf ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct rtc_time {int tm_hour; void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_min; void* tm_sec; } ;
struct rs5c348_plat_data {int /*<<< orphan*/  rtc_24h; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  rxbuf ;

/* Variables and functions */
 int EINVAL ; 
 int RS5C348_BIT_PM ; 
 int RS5C348_BIT_VDET ; 
 int RS5C348_BIT_XSTP ; 
 int RS5C348_BIT_Y2K ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RS5C348_DAY_MASK ; 
 int RS5C348_HOURS_MASK ; 
 int RS5C348_MINS_MASK ; 
 int RS5C348_MONTH_MASK ; 
 int /*<<< orphan*/  RS5C348_REG_CTL2 ; 
 size_t RS5C348_REG_DAY ; 
 size_t RS5C348_REG_HOURS ; 
 size_t RS5C348_REG_MINS ; 
 size_t RS5C348_REG_MONTH ; 
 size_t RS5C348_REG_SECS ; 
 size_t RS5C348_REG_WDAY ; 
 size_t RS5C348_REG_YEAR ; 
 int RS5C348_SECS_MASK ; 
 int RS5C348_WDAY_MASK ; 
 void* FUNC2 (int) ; 
 struct rs5c348_plat_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct spi_device*,int) ; 
 int FUNC6 (struct spi_device*,int*,int,int*,int) ; 
 struct spi_device* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct device *dev, struct rtc_time *tm)
{
	struct spi_device *spi = FUNC7(dev);
	struct rs5c348_plat_data *pdata = FUNC3(&spi->dev);
	u8 txbuf[5], rxbuf[7];
	int ret;

	ret = FUNC5(spi, FUNC1(RS5C348_REG_CTL2));
	if (ret < 0)
		return ret;
	if (ret & RS5C348_BIT_VDET)
		FUNC4(&spi->dev, "voltage-low detected.\n");
	if (ret & RS5C348_BIT_XSTP) {
		FUNC4(&spi->dev, "oscillator-stop detected.\n");
		return -EINVAL;
	}

	/* Transfer 5 byte befores reading SEC.  This gives 31us for carry. */
	txbuf[0] = FUNC1(RS5C348_REG_CTL2); /* cmd, ctl2 */
	txbuf[1] = 0;	/* dummy */
	txbuf[2] = FUNC1(RS5C348_REG_CTL2); /* cmd, ctl2 */
	txbuf[3] = 0;	/* dummy */
	txbuf[4] = FUNC0(RS5C348_REG_SECS); /* cmd, sec, ... */

	/* read in one transfer to avoid data inconsistency */
	ret = FUNC6(spi, txbuf, sizeof(txbuf),
				  rxbuf, sizeof(rxbuf));
	FUNC8(62);	/* Tcsr 62us */
	if (ret < 0)
		return ret;

	tm->tm_sec = FUNC2(rxbuf[RS5C348_REG_SECS] & RS5C348_SECS_MASK);
	tm->tm_min = FUNC2(rxbuf[RS5C348_REG_MINS] & RS5C348_MINS_MASK);
	tm->tm_hour = FUNC2(rxbuf[RS5C348_REG_HOURS] & RS5C348_HOURS_MASK);
	if (!pdata->rtc_24h) {
		if (rxbuf[RS5C348_REG_HOURS] & RS5C348_BIT_PM) {
			tm->tm_hour -= 20;
			tm->tm_hour %= 12;
			tm->tm_hour += 12;
		} else
			tm->tm_hour %= 12;
	}
	tm->tm_wday = FUNC2(rxbuf[RS5C348_REG_WDAY] & RS5C348_WDAY_MASK);
	tm->tm_mday = FUNC2(rxbuf[RS5C348_REG_DAY] & RS5C348_DAY_MASK);
	tm->tm_mon =
		FUNC2(rxbuf[RS5C348_REG_MONTH] & RS5C348_MONTH_MASK) - 1;
	/* year is 1900 + tm->tm_year */
	tm->tm_year = FUNC2(rxbuf[RS5C348_REG_YEAR]) +
		((rxbuf[RS5C348_REG_MONTH] & RS5C348_BIT_Y2K) ? 100 : 0);

	return 0;
}