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
typedef  int /*<<< orphan*/  year ;
struct rtc_time {int tm_year; } ;
struct rtc_mem {int nr; unsigned char* data; int /*<<< orphan*/  loc; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMOS_YEAR ; 
 unsigned char CTRL_HOLD ; 
 unsigned char CTRL_STOP ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,unsigned char*) ; 
 scalar_t__ FUNC2 (struct i2c_client*,struct rtc_time*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,struct rtc_mem*) ; 
 int FUNC4 (struct i2c_client*,unsigned char*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC5(dev);
	unsigned char ctrl, year[2];
	struct rtc_mem mem = {
		.loc = CMOS_YEAR,
		.nr = sizeof(year),
		.data = year
	};
	int real_year, year_offset, err;

	/*
	 * Ensure that the RTC is running.
	 */
	FUNC1(client, &ctrl);
	if (ctrl & (CTRL_STOP | CTRL_HOLD)) {
		unsigned char new_ctrl = ctrl & ~(CTRL_STOP | CTRL_HOLD);

		FUNC0(dev, "resetting control %02x -> %02x\n",
			ctrl, new_ctrl);

		err = FUNC4(client, &new_ctrl);
		if (err < 0)
			return err;
	}

	if (FUNC2(client, tm) ||
	    FUNC3(client, &mem))
		return -EIO;

	real_year = year[0];

	/*
	 * The RTC year holds the LSB two bits of the current
	 * year, which should reflect the LSB two bits of the
	 * CMOS copy of the year.  Any difference indicates
	 * that we have to correct the CMOS version.
	 */
	year_offset = tm->tm_year - (real_year & 3);
	if (year_offset < 0)
		/*
		 * RTC year wrapped.  Adjust it appropriately.
		 */
		year_offset += 4;

	tm->tm_year = (real_year + year_offset + year[1] * 100) - 1900;

	return 0;
}