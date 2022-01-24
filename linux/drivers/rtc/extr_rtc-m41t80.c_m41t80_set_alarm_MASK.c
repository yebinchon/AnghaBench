#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int M41T80_ALMON_AFE ; 
 int M41T80_ALMON_SQWE ; 
 int M41T80_FLAGS_AF ; 
 int /*<<< orphan*/  M41T80_REG_ALARM_MON ; 
 int /*<<< orphan*/  M41T80_REG_FLAGS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct i2c_client *client = FUNC5(dev);
	u8 alarmvals[5];
	int ret, err;

	alarmvals[0] = FUNC0(alrm->time.tm_mon + 1);
	alarmvals[1] = FUNC0(alrm->time.tm_mday);
	alarmvals[2] = FUNC0(alrm->time.tm_hour);
	alarmvals[3] = FUNC0(alrm->time.tm_min);
	alarmvals[4] = FUNC0(alrm->time.tm_sec);

	/* Clear AF and AFE flags */
	ret = FUNC2(client, M41T80_REG_ALARM_MON);
	if (ret < 0)
		return ret;
	err = FUNC3(client, M41T80_REG_ALARM_MON,
					ret & ~(M41T80_ALMON_AFE));
	if (err < 0) {
		FUNC1(dev, "Unable to clear AFE bit\n");
		return err;
	}

	/* Keep SQWE bit value */
	alarmvals[0] |= (ret & M41T80_ALMON_SQWE);

	ret = FUNC2(client, M41T80_REG_FLAGS);
	if (ret < 0)
		return ret;

	err = FUNC3(client, M41T80_REG_FLAGS,
					ret & ~(M41T80_FLAGS_AF));
	if (err < 0) {
		FUNC1(dev, "Unable to clear AF bit\n");
		return err;
	}

	/* Write the alarm */
	err = FUNC4(client, M41T80_REG_ALARM_MON,
					     5, alarmvals);
	if (err)
		return err;

	/* Enable the alarm interrupt */
	if (alrm->enabled) {
		alarmvals[0] |= M41T80_ALMON_AFE;
		err = FUNC3(client, M41T80_REG_ALARM_MON,
						alarmvals[0]);
		if (err)
			return err;
	}

	return 0;
}