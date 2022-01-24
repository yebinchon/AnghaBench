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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX6902_REG_CENTURY ; 
 int FUNC0 (unsigned char) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC2 (struct spi_device*,unsigned char*,int,unsigned char*,int) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *dt)
{
	int err, century;
	struct spi_device *spi = FUNC3(dev);
	unsigned char buf[8];

	buf[0] = 0xbf;	/* Burst read */

	err = FUNC2(spi, buf, 1, buf, 8);
	if (err != 0)
		return err;

	/* The chip sends data in this order:
	 * Seconds, Minutes, Hours, Date, Month, Day, Year */
	dt->tm_sec	= FUNC0(buf[0]);
	dt->tm_min	= FUNC0(buf[1]);
	dt->tm_hour	= FUNC0(buf[2]);
	dt->tm_mday	= FUNC0(buf[3]);
	dt->tm_mon	= FUNC0(buf[4]) - 1;
	dt->tm_wday	= FUNC0(buf[5]);
	dt->tm_year	= FUNC0(buf[6]);

	/* Read century */
	err = FUNC1(dev, MAX6902_REG_CENTURY, &buf[0]);
	if (err != 0)
		return err;

	century = FUNC0(buf[0]) * 100;

	dt->tm_year += century;
	dt->tm_year -= 1900;

	return 0;
}