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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ABX8XX_OSS_OF ; 
 size_t ABX8XX_REG_DA ; 
 size_t ABX8XX_REG_HR ; 
 size_t ABX8XX_REG_HTH ; 
 size_t ABX8XX_REG_MN ; 
 size_t ABX8XX_REG_MO ; 
 int /*<<< orphan*/  ABX8XX_REG_OSS ; 
 size_t ABX8XX_REG_SC ; 
 size_t ABX8XX_REG_WD ; 
 size_t ABX8XX_REG_YR ; 
 int EINVAL ; 
 int EIO ; 
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i2c_client*,size_t,int,unsigned char*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC5(dev);
	unsigned char buf[8];
	int err, flags;

	if (tm->tm_year < 100)
		return -EINVAL;

	buf[ABX8XX_REG_HTH] = 0;
	buf[ABX8XX_REG_SC] = FUNC0(tm->tm_sec);
	buf[ABX8XX_REG_MN] = FUNC0(tm->tm_min);
	buf[ABX8XX_REG_HR] = FUNC0(tm->tm_hour);
	buf[ABX8XX_REG_DA] = FUNC0(tm->tm_mday);
	buf[ABX8XX_REG_MO] = FUNC0(tm->tm_mon + 1);
	buf[ABX8XX_REG_YR] = FUNC0(tm->tm_year - 100);
	buf[ABX8XX_REG_WD] = tm->tm_wday;

	err = FUNC4(client, ABX8XX_REG_HTH,
					     sizeof(buf), buf);
	if (err < 0) {
		FUNC1(&client->dev, "Unable to write to date registers\n");
		return -EIO;
	}

	/* Clear the OF bit of Oscillator Status Register */
	flags = FUNC2(client, ABX8XX_REG_OSS);
	if (flags < 0)
		return flags;

	err = FUNC3(client, ABX8XX_REG_OSS,
					flags & ~ABX8XX_OSS_OF);
	if (err < 0) {
		FUNC1(&client->dev, "Unable to write oscillator status register\n");
		return err;
	}

	return 0;
}