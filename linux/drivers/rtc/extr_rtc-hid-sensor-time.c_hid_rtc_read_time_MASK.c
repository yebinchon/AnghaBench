#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hsdev; } ;
struct hid_time_state {int /*<<< orphan*/  lock_last_time; struct rtc_time last_time; int /*<<< orphan*/  comp_last_time; TYPE_2__* info; TYPE_1__ common_attributes; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  report_id; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_TIME ; 
 int HZ ; 
 int /*<<< orphan*/  SENSOR_HUB_SYNC ; 
 struct hid_time_state* FUNC0 (struct device*) ; 
 int /*<<< orphan*/ * hid_time_addresses ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	unsigned long flags;
	struct hid_time_state *time_state = FUNC0(dev);
	int ret;

	FUNC1(&time_state->comp_last_time);
	/* get a report with all values through requesting one value */
	FUNC2(time_state->common_attributes.hsdev,
			HID_USAGE_SENSOR_TIME, hid_time_addresses[0],
			time_state->info[0].report_id, SENSOR_HUB_SYNC, false);
	/* wait for all values (event) */
	ret = FUNC5(
			&time_state->comp_last_time, HZ*6);
	if (ret > 0) {
		/* no error */
		FUNC3(&time_state->lock_last_time, flags);
		*tm = time_state->last_time;
		FUNC4(&time_state->lock_last_time, flags);
		return 0;
	}
	if (!ret)
		return -EIO; /* timeouted */
	return ret; /* killed (-ERESTARTSYS) */
}