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
struct timespec64 {unsigned long tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct rtc_time {int dummy; } ;
struct rtc_device {int /*<<< orphan*/  set_offset_nsec; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  set_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RTC_SYSTOHC_DEVICE ; 
 int ENODEV ; 
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_device*) ; 
 struct rtc_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtc_device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct timespec64*,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct timespec64 now, unsigned long *target_nsec)
{
	struct rtc_device *rtc;
	struct rtc_time tm;
	struct timespec64 to_set;
	int err = -ENODEV;
	bool ok;

	rtc = FUNC1(CONFIG_RTC_SYSTOHC_DEVICE);
	if (!rtc)
		goto out_err;

	if (!rtc->ops || !rtc->ops->set_time)
		goto out_close;

	/* Compute the value of tv_nsec we require the caller to supply in
	 * now.tv_nsec.  This is the value such that (now +
	 * set_offset_nsec).tv_nsec == 0.
	 */
	FUNC5(&to_set, 0, -rtc->set_offset_nsec);
	*target_nsec = to_set.tv_nsec;

	/* The ntp code must call this with the correct value in tv_nsec, if
	 * it does not we update target_nsec and return EPROTO to make the ntp
	 * code try again later.
	 */
	ok = FUNC4(rtc->set_offset_nsec, &to_set, &now);
	if (!ok) {
		err = -EPROTO;
		goto out_close;
	}

	FUNC3(to_set.tv_sec, &tm);

	err = FUNC2(rtc, &tm);

out_close:
	FUNC0(rtc);
out_err:
	return err;
}