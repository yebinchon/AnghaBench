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
struct rtc_time {void* tm_year; void* tm_wday; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MAX6916_CLOCK_BURST ; 
 void* FUNC0 (unsigned char) ; 
 int FUNC1 (struct spi_device*,unsigned char*,int,unsigned char*,int) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *dt)
{
	struct spi_device *spi = FUNC2(dev);
	int err;
	unsigned char buf[8];

	buf[0] = MAX6916_CLOCK_BURST | 0x80;

	err = FUNC1(spi, buf, 1, buf, 8);

	if (err)
		return err;

	dt->tm_sec = FUNC0(buf[0]);
	dt->tm_min = FUNC0(buf[1]);
	dt->tm_hour = FUNC0(buf[2] & 0x3F);
	dt->tm_mday = FUNC0(buf[3]);
	dt->tm_mon = FUNC0(buf[4]) - 1;
	dt->tm_wday = FUNC0(buf[5]) - 1;
	dt->tm_year = FUNC0(buf[6]) + 100;

	return 0;
}