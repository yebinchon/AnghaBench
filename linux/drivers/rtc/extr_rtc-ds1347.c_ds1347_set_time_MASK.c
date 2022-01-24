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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; int tm_year; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1347_CLOCK_BURST ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 struct regmap* FUNC2 (struct spi_device*) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *dt)
{
	struct spi_device *spi = FUNC3(dev);
	struct regmap *map;
	unsigned char buf[8];

	map = FUNC2(spi);

	buf[0] = FUNC0(dt->tm_sec);
	buf[1] = FUNC0(dt->tm_min);
	buf[2] = (FUNC0(dt->tm_hour) & 0x3F);
	buf[3] = FUNC0(dt->tm_mday);
	buf[4] = FUNC0(dt->tm_mon + 1);
	buf[5] = FUNC0(dt->tm_wday + 1);

	/* year in linux is from 1900 i.e in range of 100
	in rtc it is from 00 to 99 */
	dt->tm_year = dt->tm_year % 100;

	buf[6] = FUNC0(dt->tm_year);
	buf[7] = FUNC0(0x00);

	/* write the rtc settings */
	return FUNC1(map, DS1347_CLOCK_BURST, buf, 8);
}