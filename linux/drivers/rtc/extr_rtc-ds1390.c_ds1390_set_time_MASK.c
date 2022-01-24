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
struct spi_device {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct ds1390 {int* txrx_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS1390_REG_SECONDS ; 
 int FUNC0 (int) ; 
 struct ds1390* FUNC1 (struct device*) ; 
 int FUNC2 (struct spi_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *dt)
{
	struct spi_device *spi = FUNC3(dev);
	struct ds1390 *chip = FUNC1(dev);

	/* build the message */
	chip->txrx_buf[0] = DS1390_REG_SECONDS | 0x80;
	chip->txrx_buf[1] = FUNC0(dt->tm_sec);
	chip->txrx_buf[2] = FUNC0(dt->tm_min);
	chip->txrx_buf[3] = FUNC0(dt->tm_hour);
	chip->txrx_buf[4] = FUNC0(dt->tm_wday);
	chip->txrx_buf[5] = FUNC0(dt->tm_mday);
	chip->txrx_buf[6] = FUNC0(dt->tm_mon + 1) |
				((dt->tm_year > 99) ? 0x80 : 0x00);
	chip->txrx_buf[7] = FUNC0(dt->tm_year % 100);

	/* do the i/o */
	return FUNC2(spi, chip->txrx_buf, 8, NULL, 0);
}