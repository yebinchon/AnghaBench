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
struct TYPE_2__ {void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int M41T80_ALMON_AFE ; 
 int M41T80_FLAGS_AF ; 
 int /*<<< orphan*/  M41T80_REG_ALARM_MON ; 
 int /*<<< orphan*/  M41T80_REG_FLAGS ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct i2c_client *client = FUNC3(dev);
	u8 alarmvals[5];
	int flags, ret;

	ret = FUNC2(client, M41T80_REG_ALARM_MON,
					    5, alarmvals);
	if (ret != 5)
		return ret < 0 ? ret : -EIO;

	flags = FUNC1(client, M41T80_REG_FLAGS);
	if (flags < 0)
		return flags;

	alrm->time.tm_sec  = FUNC0(alarmvals[4] & 0x7f);
	alrm->time.tm_min  = FUNC0(alarmvals[3] & 0x7f);
	alrm->time.tm_hour = FUNC0(alarmvals[2] & 0x3f);
	alrm->time.tm_mday = FUNC0(alarmvals[1] & 0x3f);
	alrm->time.tm_mon  = FUNC0(alarmvals[0] & 0x3f) - 1;

	alrm->enabled = !!(alarmvals[0] & M41T80_ALMON_AFE);
	alrm->pending = (flags & M41T80_FLAGS_AF) && alrm->enabled;

	return 0;
}