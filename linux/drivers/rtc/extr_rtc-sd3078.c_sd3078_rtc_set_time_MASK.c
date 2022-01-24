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
struct sd3078 {int /*<<< orphan*/  regmap; } ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NUM_TIME_REGS ; 
 size_t SD3078_REG_DM ; 
 size_t SD3078_REG_DW ; 
 size_t SD3078_REG_HR ; 
 size_t SD3078_REG_MN ; 
 size_t SD3078_REG_MO ; 
 size_t SD3078_REG_SC ; 
 size_t SD3078_REG_YR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct sd3078* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd3078*) ; 
 int /*<<< orphan*/  FUNC5 (struct sd3078*) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	unsigned char rtc_data[NUM_TIME_REGS];
	struct i2c_client *client = FUNC6(dev);
	struct sd3078 *sd3078 = FUNC2(client);
	int ret;

	rtc_data[SD3078_REG_SC] = FUNC0(tm->tm_sec);
	rtc_data[SD3078_REG_MN] = FUNC0(tm->tm_min);
	rtc_data[SD3078_REG_HR] = FUNC0(tm->tm_hour) | 0x80;
	rtc_data[SD3078_REG_DM] = FUNC0(tm->tm_mday);
	rtc_data[SD3078_REG_DW] = tm->tm_wday & 0x07;
	rtc_data[SD3078_REG_MO] = FUNC0(tm->tm_mon) + 1;
	rtc_data[SD3078_REG_YR] = FUNC0(tm->tm_year - 100);

#if WRITE_PROTECT_EN
	sd3078_enable_reg_write(sd3078);
#endif

	ret = FUNC3(sd3078->regmap, SD3078_REG_SC, rtc_data,
				NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "writing to RTC failed with err:%d\n", ret);
		return ret;
	}

#if WRITE_PROTECT_EN
	sd3078_disable_reg_write(sd3078);
#endif

	return 0;
}