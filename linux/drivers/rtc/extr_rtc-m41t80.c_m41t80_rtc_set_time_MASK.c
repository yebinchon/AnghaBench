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
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; unsigned char tm_wday; } ;
struct m41t80_data {int features; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int M41T80_FEATURE_SQ_ALT ; 
 int M41T80_FLAGS_OF ; 
 size_t M41T80_REG_DAY ; 
 size_t M41T80_REG_FLAGS ; 
 size_t M41T80_REG_HOUR ; 
 size_t M41T80_REG_MIN ; 
 size_t M41T80_REG_MON ; 
 size_t M41T80_REG_SEC ; 
 size_t M41T80_REG_SSEC ; 
 size_t M41T80_REG_WDAY ; 
 size_t M41T80_REG_YEAR ; 
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct m41t80_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,size_t) ; 
 int FUNC4 (struct i2c_client*,size_t,int) ; 
 int FUNC5 (struct i2c_client*,size_t,int,unsigned char*) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC6(dev);
	struct m41t80_data *clientdata = FUNC2(client);
	unsigned char buf[8];
	int err, flags;

	if (tm->tm_year < 100 || tm->tm_year > 199)
		return -EINVAL;

	buf[M41T80_REG_SSEC] = 0;
	buf[M41T80_REG_SEC] = FUNC0(tm->tm_sec);
	buf[M41T80_REG_MIN] = FUNC0(tm->tm_min);
	buf[M41T80_REG_HOUR] = FUNC0(tm->tm_hour);
	buf[M41T80_REG_DAY] = FUNC0(tm->tm_mday);
	buf[M41T80_REG_MON] = FUNC0(tm->tm_mon + 1);
	buf[M41T80_REG_YEAR] = FUNC0(tm->tm_year - 100);
	buf[M41T80_REG_WDAY] = tm->tm_wday;

	/* If the square wave output is controlled in the weekday register */
	if (clientdata->features & M41T80_FEATURE_SQ_ALT) {
		int val;

		val = FUNC3(client, M41T80_REG_WDAY);
		if (val < 0)
			return val;

		buf[M41T80_REG_WDAY] |= (val & 0xf0);
	}

	err = FUNC5(client, M41T80_REG_SSEC,
					     sizeof(buf), buf);
	if (err < 0) {
		FUNC1(&client->dev, "Unable to write to date registers\n");
		return err;
	}

	/* Clear the OF bit of Flags Register */
	flags = FUNC3(client, M41T80_REG_FLAGS);
	if (flags < 0)
		return flags;

	err = FUNC4(client, M41T80_REG_FLAGS,
					flags & ~M41T80_FLAGS_OF);
	if (err < 0) {
		FUNC1(&client->dev, "Unable to write flags register\n");
		return err;
	}

	return err;
}