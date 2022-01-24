#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  time64_t ;
struct rv8803_data {int ctrl; int /*<<< orphan*/  client; TYPE_3__* rtc; int /*<<< orphan*/  flags_lock; } ;
struct TYPE_9__ {int tm_sec; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_4__ time; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {scalar_t__ enabled; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_8__ {TYPE_2__ aie_timer; TYPE_1__ uie_rtctimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV8803_ALARM_MIN ; 
 int /*<<< orphan*/  RV8803_CTRL ; 
 int RV8803_CTRL_AIE ; 
 int RV8803_CTRL_UIE ; 
 int /*<<< orphan*/  RV8803_FLAG ; 
 int RV8803_FLAG_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rv8803_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 struct i2c_client* FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct i2c_client *client = FUNC9(dev);
	struct rv8803_data *rv8803 = FUNC1(dev);
	u8 alarmvals[3];
	u8 ctrl[2];
	int ret, err;

	/* The alarm has no seconds, round up to nearest minute */
	if (alrm->time.tm_sec) {
		time64_t alarm_time = FUNC5(&alrm->time);

		alarm_time += 60 - alrm->time.tm_sec;
		FUNC4(alarm_time, &alrm->time);
	}

	FUNC2(&rv8803->flags_lock);

	ret = FUNC6(client, RV8803_FLAG, 2, ctrl);
	if (ret) {
		FUNC3(&rv8803->flags_lock);
		return ret;
	}

	alarmvals[0] = FUNC0(alrm->time.tm_min);
	alarmvals[1] = FUNC0(alrm->time.tm_hour);
	alarmvals[2] = FUNC0(alrm->time.tm_mday);

	if (rv8803->ctrl & (RV8803_CTRL_AIE | RV8803_CTRL_UIE)) {
		rv8803->ctrl &= ~(RV8803_CTRL_AIE | RV8803_CTRL_UIE);
		err = FUNC7(rv8803->client, RV8803_CTRL,
				       rv8803->ctrl);
		if (err) {
			FUNC3(&rv8803->flags_lock);
			return err;
		}
	}

	ctrl[1] &= ~RV8803_FLAG_AF;
	err = FUNC7(rv8803->client, RV8803_FLAG, ctrl[1]);
	FUNC3(&rv8803->flags_lock);
	if (err)
		return err;

	err = FUNC8(rv8803->client, RV8803_ALARM_MIN, 3, alarmvals);
	if (err)
		return err;

	if (alrm->enabled) {
		if (rv8803->rtc->uie_rtctimer.enabled)
			rv8803->ctrl |= RV8803_CTRL_UIE;
		if (rv8803->rtc->aie_timer.enabled)
			rv8803->ctrl |= RV8803_CTRL_AIE;

		err = FUNC7(rv8803->client, RV8803_CTRL,
				       rv8803->ctrl);
		if (err)
			return err;
	}

	return 0;
}