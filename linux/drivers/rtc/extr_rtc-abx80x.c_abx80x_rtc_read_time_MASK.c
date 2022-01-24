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
struct rtc_time {unsigned char tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ABX8XX_OSS_OF ; 
 size_t ABX8XX_REG_DA ; 
 size_t ABX8XX_REG_HR ; 
 int /*<<< orphan*/  ABX8XX_REG_HTH ; 
 size_t ABX8XX_REG_MN ; 
 size_t ABX8XX_REG_MO ; 
 int /*<<< orphan*/  ABX8XX_REG_OSS ; 
 size_t ABX8XX_REG_SC ; 
 size_t ABX8XX_REG_WD ; 
 size_t ABX8XX_REG_YR ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct i2c_client*) ; 
 void* FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC5(dev);
	unsigned char buf[8];
	int err, flags, rc_mode = 0;

	/* Read the Oscillator Failure only in XT mode */
	rc_mode = FUNC0(client);
	if (rc_mode < 0)
		return rc_mode;

	if (!rc_mode) {
		flags = FUNC3(client, ABX8XX_REG_OSS);
		if (flags < 0)
			return flags;

		if (flags & ABX8XX_OSS_OF) {
			FUNC2(dev, "Oscillator failure, data is invalid.\n");
			return -EINVAL;
		}
	}

	err = FUNC4(client, ABX8XX_REG_HTH,
					    sizeof(buf), buf);
	if (err < 0) {
		FUNC2(&client->dev, "Unable to read date\n");
		return -EIO;
	}

	tm->tm_sec = FUNC1(buf[ABX8XX_REG_SC] & 0x7F);
	tm->tm_min = FUNC1(buf[ABX8XX_REG_MN] & 0x7F);
	tm->tm_hour = FUNC1(buf[ABX8XX_REG_HR] & 0x3F);
	tm->tm_wday = buf[ABX8XX_REG_WD] & 0x7;
	tm->tm_mday = FUNC1(buf[ABX8XX_REG_DA] & 0x3F);
	tm->tm_mon = FUNC1(buf[ABX8XX_REG_MO] & 0x1F) - 1;
	tm->tm_year = FUNC1(buf[ABX8XX_REG_YR]) + 100;

	return 0;
}